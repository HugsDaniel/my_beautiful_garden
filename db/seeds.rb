# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Garden.destroy_all if Rails.env.development?
Plant.destroy_all if Rails.env.development?
Tag.destroy_all if Rails.env.development?

magic = Garden.create!(
  name: "Magic Garden",
  location: "Nantes",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "Psychedelic Garden",
  location: "Rennes",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

Plant.create!(
  name: "Marie-Jeanne",
  species: "Capucine",
  photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTBK1T-2cmDXo0xGxbmqwdARTWQ7ISavsKvYg&usqp=CAU",
  garden: magic
)

Plant.create!(
  name: "Michel",
  species: "Cèpes",
  photo_url: "https://resize-elle.ladmedia.fr/r/618,769,force,ffffff/img/var/plain_site/storage/images/elle-a-table/recettes-de-cuisine/poelee-de-cepes-2079542/22093742-2-fre-FR/Poelee-de-cepes.jpg",
  garden: magic
)

tag_attributes = ["Cactus", "Cannabinoide", "Psychédélique", "Afrodisiaque"]

tag_attributes.each do |attrib|
  Tag.create!(name: attrib)
end
