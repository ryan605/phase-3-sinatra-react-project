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
User.all.each do |user|
    5.times do
      user.projects.create(
        title: Faker::Book.title,
        description: Faker::Lorem.paragraph_by_chars(number: 256),
        image_url: Faker::Internet.url,
        repo_url: Faker::Internet.url
      )
    end
end


puts "✅ Done seeding!"
