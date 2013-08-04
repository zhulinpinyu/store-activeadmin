# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(name: "Digital")
Category.create(name: "Sports")
Category.create(name: "Clothes")

Category.first.products.create(name: "ipod", price: 99.99, released_at: Time.now)
Category.first.products.create(name: "mac pro", price: 1999.99, released_at: Time.now)
Category.all[1].products.create(name: "football", price: 29.99, released_at: Time.now)
Category.all[1].products.create(name: "basketball", price: 9.9, released_at: Time.now)
Category.all[2].products.create(name: "T-shirt", price: 25.99, released_at: Time.now)
Category.all[2].products.create(name: "Erke", price: 4.99, released_at: Time.now)