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
      insurance: 400,
      extra_person_fee: 500,
      name: 'Rondon',
      reserved: false },

    { price_per_hour: 4,
      description: 'The king of the sea!',
      max_time: 5,
      insurance: 600,
      extra_person_fee: 400,
      name: 'King',
      reserved: false },

    { price_per_hour: 20,
      description: 'The most luxurious yacht in the world',
      max_time: 5,
      insurance: 400,
      extra_person_fee: 500,
      name: 'Siren',
      reserved: false },

    { price_per_hour: 5,
      description: 'Our fastest yacht',
      max_time: 2,
      insurance: 400,
      extra_person_fee: 600,
      name: 'Pearl',
      reserved: false }

  ]
)
