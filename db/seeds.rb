# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'
require 'json'

url = "http://tmdb.lewagon.com/movie/top_rated"
url_serialized = URI.open(url).read
result = JSON.parse(url_serialized)

hashes = result['results']
hashes.each do |hash|
  Movie.create!(title: hash['title'], overview: hash['overview'], rating: hash['vote_average'], poster_url: hash['poster_path'])
end
