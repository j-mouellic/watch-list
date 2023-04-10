require 'faker'

puts "create 100 movies"

100.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Lorem.sentences,
    poster_url: Faker::LoremFlickr.image,
    rating: Faker::Number.between(from: 1, to: 10)
  )
end

puts "100 movies has been created"
