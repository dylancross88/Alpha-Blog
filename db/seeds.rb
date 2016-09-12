# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(username: "admin", email: "admin@admin.com", password: "password", admin: true)
user.save

user2 = User.new(username: "Bob", email: "bob@marley.com", password: "password", admin: false)
user2.save