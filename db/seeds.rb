# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Yacht.create(
  [
    { price_per_hour: 1,
      description: 'This yacht is amazing!',
      max_time: 3,
      insurence: 400,
      extra_person_fee: 500 }
  ]
)
