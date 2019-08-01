# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#Permet de supprimer les informations précédements stockées afin de disposer d'un tableau MAJ
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all


#Boucle permettant d'afficher les "fake" cities (on supprimera le contenur de la BDD après chaque relance de rails db:seed)
20.times do
   choice_city = City.create!(city_name: Faker::Address.city)
end


#Boucle permettant d'afficher les "fake" dogsitters (on supprimera le contenur de la BDD après chaque relance de rails db:seed)
20.times do
  choice_dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.find(rand(City.first.id..City.last.id))) 
end

#Boucle permettant d'afficher les "fake" dogsitters (on supprimera le contenur de la BDD après chaque relance de rails db:seed)
20.times do
   choice_dog = Dog.create!(nick_name: Faker::Creature::Dog.name, city: City.find(rand(City.first.id..City.last.id)))
end

#Boucle permettant d'afficher les "fake" strolls (on supprimera le contenur de la BDD après chaque relance de rails db:seed)
20.times do
stroll = Stroll.create!(dog: Dog.find(rand(Dog.first.id..Dog.last.id)), dogsitter: Dogsitter.find(rand(Dogsitter.first.id..Dogsitter.last.id)))
end