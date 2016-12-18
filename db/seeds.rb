10.times do
  Project::Create.call(project: {
    name:        Faker::Commerce.department,
    description: Faker::Lorem.sentence(3)
  })
end
