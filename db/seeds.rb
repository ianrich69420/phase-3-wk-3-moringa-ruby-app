puts "Seeding Reviews..."

# run a loop 50 times
50.times do
  product = Product.create(
    name: Faker::Commerce.product_name
  )

  user = User.create(
    name: Faker::Name.name
  )

  # create a review with random data
  rand(1..5).times do
    Review.create(
        product_id: product.id,
        user_id: user.id,
        star_rating: rand(0..5), # random number between 0 and 60
        comment: Faker::Lorem.paragraph
    )
  end
end

puts "Done seeding!"