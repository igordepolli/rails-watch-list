number_executions = 1
10.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraph,
    poster_url: "https://picsum.photos/841/1189?random=#{number_executions}",
    rating: Faker::Number.between(from: 0.0, to: 10.0).round(2)
  )
  number_executions += 1
end

number_executions = 1
5.times do
  List.create(
    name: Faker::Movie.quote,
    cover_url: "https://picsum.photos/1200/500?random=#{number_executions}"
  )
  number_executions += 1
end

# number_executions = 1
# 5.times do
#   list = List.new(
#     name: Faker::Movie.quote,
#     cover_url: "https://picsum.photos/1200/500?random=#{number_executions}"
#   )
#   2.times do
#     movie = Movie.new(
#       title: Faker::Movie.title,
#       overview: Faker::Lorem.paragraph,
#       poster_url: "https://picsum.photos/841/1189?random=#{number_executions}",
#       rating: Faker::Number.between(from: 0.0, to: 10.0).round(2)
#     )
#     movie.save
#     list.movies << movie

#     bookmark = Bookmark.new(
#       comment: Faker::Movie.quote
#     )
#     bookmark.movie = movie
#     list.bookmarks << bookmark
#     bookmark.save
#   end

#   list.save
#   number_executions += 1
# end
