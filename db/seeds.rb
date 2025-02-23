# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clear existing data
Place.destroy_all
Entry.destroy_all

# Seed Places
place1 = Place.create({ "name" => "Lisbon" })
place2 = Place.create({ "name" => "Amsterdam" })
place3 = Place.create({ "name" => "Chennai" })

# Seed Entries for each Place
Entry.create({ "title" => "Sailing", "description" => "Sail on the river with Alexa.", "occurred_on" => "2021-05-01", "place_id" => place1["id"] })
Entry.create({ "title" => "Coffee Bar", "description" => "Enjoyed a visit to a coffee shop.", "occurred_on" => "2021-05-02", "place_id" => place2["id"] })

Entry.create({ "title" => "Museum", "description" => "Saw miniatures at the Rijksmuseum.", "occurred_on" => "2020-01-20", "place_id" => place2["id"] })

Entry.create({ "title" => "Cousin Visit", "description" => "Spent a weekend at my cousin's house.", "occurred_on" => "2023-12-23", "place_id" => place3["id"] })
Entry.create({ "title" => "Jewelry Shopping ", "description" => "Went shopping for gold rings.", "occurred_on" => "2023-12-25", "place_id" => place3["id"] })

puts "#{Place.count} places created."
puts "#{Entry.count} entries created."
