# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Place.create!([
  {name: "school", address: "101 west neck ave"},
  {name: "work", address: "23rd on division"},
  {name: "home", address: "1111 n rd se"},
])