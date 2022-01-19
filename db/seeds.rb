# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Yacht.destroy_all
rondon = Yacht.create(
  price_per_hour: 1,
  description: 'This yacht is amazing!',
  max_time: 3,
  insurance: 400,
  extra_person_fee: 500,
  name: 'Rondon',
  reserved: false
)

rondon.picture.attach(
  io: File.open('./public/pictures/rondon.jpg'),
  filename: 'rondon.jpg',
  content_type: 'image/jpeg'
)

king = Yacht.create(
  price_per_hour: 4,
  description: 'The king of the sea!',
  max_time: 5,
  insurance: 600,
  extra_person_fee: 400,
  name: 'King',
  reserved: false
)

king.picture.attach(
  io: File.open('./public/pictures/king.jpg'),
  filename: 'king.jpg',
  content_type: 'image/jpeg'
)

siren = Yacht.create(
  price_per_hour: 20,
  description: 'The most luxurious yacht in the world',
  max_time: 5,
  insurance: 400,
  extra_person_fee: 500,
  name: 'Siren',
  reserved: false
)

siren.picture.attach(
  io: File.open('./public/pictures/siren.jpg'),
  filename: 'siren.jpg',
  content_type: 'image/jpeg'
)

pearl = Yacht.create(
  price_per_hour: 5,
  description: 'Our fastest yacht',
  max_time: 2,
  insurance: 400,
  extra_person_fee: 600,
  name: 'Pearl',
  reserved: false
)

pearl.picture.attach(
  io: File.open('./public/pictures/pearl.jpg'),
  filename: 'pearl.jpg',
  content_type: 'image/jpeg'
)

swan = Yacht.create(
  price_per_hour: 50,
  description: 'A beautiful swan',
  max_time: 10,
  insurance: 800,
  extra_person_fee: 1000,
  name: 'Swan',
  reserved: false
)

swan.picture.attach(
  io: File.open('./public/pictures/swan.jpg'),
  filename: 'swan.jpg',
  content_type: 'image/jpeg'
)
