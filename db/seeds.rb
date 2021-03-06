# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ApplicationRecord.reset_column_information

User.destroy_all
avatar = File.open(Rails.root.join("public/avatar/user15.jpg"))
User.create!(email: 'josh@stackoverflow.com', password: '12345678', role: 'admin', name: 'Josh', avatar: avatar, title: "產品經理")
puts 'admin user created !'
