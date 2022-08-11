# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "json"

# url = "http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>"
# movies_serialized = URI.open(url).read
# movies = JSON.parse(movies_serialized)
# # movies_array = movies["results"]
# # puts(movies_array)

# movies["results"].each do |hash|
#   Movie.create(
  #     title: hash["title"],
  #     overview: hash["overview"],
  #     poster_url: "https://image.tmdb.org/t/p/original" + hash["poster_path"],
  #     rating: hash["vote_average"]
  #   )
  #

puts "Cleaning up database..."
Movie.destroy_all
puts "Database cleaned"


url = "https://api.themoviedb.org/3/movie/top_rated?api_key=28c2efab759f272eb65d99fc24fd4a0f&page="

500.times do |i|
  puts "import movies from page #{i + 1}"
  movies = JSON.parse(URI.open("#{url}#{i + 1}").read)["results"]

  movies.each do |movie|
    base_poster_url = "https://image.tmdb.org/t/p/original"
    Movie.create(
      title: movie["title"],
      overview: movie["overview"],
      poster_url: "#{base_poster_url}#{movie["backdrop_path"]}",
      rating: movie["vote_average"]
    )
  end
end
