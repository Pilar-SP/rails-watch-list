# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "json"

url = "http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>"
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)
# movies_array = movies["results"]
# puts(movies_array)

movies["results"].each do |hash|
  Movie.create(
    title: hash["title"],
    overview: hash["overview"],
    poster_url: "https://image.tmdb.org/t/p/original" + hash["poster_path"],
    rating: hash["vote_average"]
  )
end
