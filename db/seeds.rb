# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: 'admin@test.com', password: 'exposure', password_confirmation: 'exposure', role:"admin", approved: "true")
User.create!(email: 'demo1@test.com', password: 'exposure', password_confirmation: 'exposure', role:"user", approved: "false")
User.create!(email: 'demo2@test.com', password: 'exposure', password_confirmation: 'exposure', role:"user", approved: "false")

