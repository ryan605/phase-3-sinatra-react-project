require 'faker'

puts "🌱 Seeding spices..."


# Seed your database her
10.times do
    User.create(
        email: Faker::Internet.email,
        password: Faker::Internet.password,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )
end


puts "✅ Done seeding!"
