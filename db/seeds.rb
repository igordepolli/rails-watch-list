require 'open-uri'
require 'json'

url = 'http://tmdb.lewagon.com/movie/top_rated'
response_serialized = URI.open(url).read
response_json = JSON.parse(response_serialized)
movies_hash = response_json['results'].first(10)

movies_hash.each do |movie|
  Movie.create(
    title: movie['title'],
    overview: movie['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}",
    rating: movie['vote_average']
  )
end
