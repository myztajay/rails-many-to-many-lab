namespace :db do

desc "populates patients"
  task populate: :environment do
    5.times do
      Patient.create(
        name: Faker::Pokemon.name,
        age: Faker::Number.between(18,70),
        gender: ["male", "female"].sample
      )
    end
  end
end
