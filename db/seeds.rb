# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Removing old data

# puts ' Removing users'

# User.destroy 

# puts 'Users successfully removed'

# puts ' Removing likes'

# Like.all.destroy 

# puts 'Likes successfully removed'

# puts ' Removing tweets'

# Tweet.all.destroy 

# puts 'tweets successfully removed'


# Seeding

puts "Seeding users"

user = User.create(email: "test@gmail.com", password: "password", username: 'DonaldTrump')

user_2 = User.create(email: "test_2@gmail.com", password: "password", username: 'BonnieTyler')

puts "Succesfully seeded users!✅"


puts "Seeding tweets"


  Tweet.create(
    body: "We have a 5 billion dollar website. I have so many websites. I have them all over the place... I hire people... it costs me three dollars.",
    user_id: 1
  )

    Tweet.create(
    body: "It's freezing and snowing in New York--we need global warming!",
    user_id: 1
  )

    Tweet.create(
    body: "Once upon a time I was falling in love",
    user_id: 2
  )


puts "Succesfully seeded tweets!✅"
