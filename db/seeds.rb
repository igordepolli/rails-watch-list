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
