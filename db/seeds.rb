require 'faker'

10.times do |i|
  User.create(name: Faker::Name.first_name)
end

30.times do |i|
  User.find(rand(10) + 1).albums.create(name: Faker::Lorem.word)
end
