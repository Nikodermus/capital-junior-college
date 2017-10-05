100.times do
    User.create(name: Faker::GameOfThrones.character)
end