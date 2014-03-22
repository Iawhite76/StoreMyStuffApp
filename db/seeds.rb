# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

users = [
  {first_name: "Ian", last_name: "White", email: 'ian@example.com', password: 'IanSamplePassword'},
  {first_name: "Charlie", last_name: "Day", email: 'charlie@example.com', password: 'CharlieSamplePassword'}
]

users.each do |user|
  User.create(
    first_name: user[:first_name],
    last_name: user[:last_name],
    email: user[:email],
    password: user[:password],
  )
end
