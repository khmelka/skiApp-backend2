# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

Resort.destroy_all


  

# user1 = User.create({name: "Ahmed", email: "laksjdalks@yahoo.com", password: "12345"})




resorts=JSON.parse(File.read('./public/skiresorts.json'))
# resorts.each do |resort|
#     Resort.create!(resort)
# end 




resorts["skiresorts"].each do |resort|
    # byebug
    Resort.create(
        resortname: resort["resortname"],
        url: resort["url"],
        logo: resort["logo"],
        annualsnow: resort["annualsnow"],
        lifts: resort["lifts"],
        score: resort["score"],
        latitude: resort["latitude"], 
        longitude: resort["longitude"],
    )
end
