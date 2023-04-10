require 'json'
require "open-uri"

List.destroy_all
Movie.destroy_all

url = "https://tmdb.lewagon.com/movie/top_rated"
movies = URI.open(url).read
movies = JSON.parse(movies)

base_url_poster = "https://image.tmdb.org/t/p/original"
movies["results"].each do |movie|
  Movie.create(
    title: movie["title"],
    overview: movie["overview"],
    rating: movie["vote_average"].to_i,
    poster_url: "#{base_url_poster}#{movie["poster_path"]}"
  )
end
