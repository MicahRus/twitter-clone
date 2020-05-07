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

user = User.create(email: "test@gmail.com", password: "password")

puts "Succesfully seeded users!✅"


puts "Seeding tweets"


  Tweet.create(
    body: "This is test tweet number 1",
    user_id: 1
  )

    Tweet.create(
    body: "This is test tweet number 2",
    user_id: 1
  )

    Tweet.create(
    body: "This is test tweet number 3",
    user_id: 1
  )


puts "Succesfully seeded tweets!✅"

  Like.create(
    user_id: 1,
    tweet_id: 1,
    has_liked: true
  )