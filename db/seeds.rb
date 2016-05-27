# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create the users
puts "Creating accounts..."
daniel = Account.create(username: "danielxu", password: "123", firstname: "Daniel", lastname: "Xu", email: "danielxu2016@kellogg.northwestern.edu")
