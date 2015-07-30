# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..38).each do |i|
  Monster.create(image_number: i)
end

10.times do
  user = User.new(email: Faker::Internet.email,
              password: "password",
              encrypted_password: Faker::Lorem.characters(20),
              game_name: Faker::Name.name,
              game_id: Faker::Lorem.characters(6),
              line_name: Faker::Name.name,
              info_completed: true,
              remark: Faker::Lorem.sentences.join("\n"))
  user.save!

  Monster.all.sample(rand(3)+6).map(&:id).each do |monster_id|
    user.users_units.create(monster_id: monster_id, monster_level: rand(30))
  end
end