# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "====="
p "Creating Test Users"
p "====="

user1 = User.new(
  username: "Hezekiah615",
  email: "Hezekiah615@gmail.com",
  password: "1h1h1h1H",
  password_confirmation: "1h1h1h1H"
)
user1.skip_confirmation!
user1.save!

user2 = User.new(
  username: "wwafdash615",
  email: "Hesg24rh615@gmail.com",
  password: "1h1h1h1H",
  password_confirmation: "1h1h1h1H"
)
user2.skip_confirmation!
user2.save!

user3 = User.new(
  username: "H23r2dah615",
  email: "Hez32efsfdsh615@gmail.com",
  password: "1h1h1h1H",
  password_confirmation: "1h1h1h1H"
)
user3.skip_confirmation!
user3.save!

user4 = User.new(
  username: "yyvsf3ah615",
  email: "Hezekia32r2r3r@gmail.com",
  password: "1h1h1h1H",
  password_confirmation: "1h1h1h1H"
)
user4.skip_confirmation!
user4.save!

user5 = User.new(
  username: "Geah615",
  email: "Hezekifsfsfs615@gmail.com",
  password: "1h1h1h1H",
  password_confirmation: "1h1h1h1H"
)
user5.skip_confirmation!
user5.save!

user6 = User.new(
  username: "CaptCussa",
  email: "malachaifrazier@gmail.com",
  password: "1h1h1h1H",
  password_confirmation: "1h1h1h1H"
)
user6.skip_confirmation!
user6.save!

# puts 'Generate Friendly id slug for users'
# puts '==================================='
# User.find_each(&:save)

