# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
powers = [
  {name:"super strength",description: "gives the wielder super human strengths"},
  {name:"flight",description: "gives the wielder the ability to fly through the skys at supersonic speed"},
  {name:"telepathy",description: "allows one to receive and transmit information using the mind"},
  {name:"detachable limbs",description: "being able to remove your limbs at will"}
]

puts " ⚡ creating powers...."

powers.each {|power| Power.create(power)}

heros = [
  {name:"Kamala Khan", super_name:"Ms. Marvel"},
  {name:"Doreen Green", super_name:"Squirrel Girl"},
  {name:"Gwen Stacy", super_name:"Spider_Gwen"},
  {name:"Kenpachi Zaraki", super_name:"Sharingan"},
]

puts "🦸 creating heroes...."

heros.each { |hero| Hero.create(hero) }

HeroPower.create(strength: "Average", hero_id: 1 , power_id: 1)

puts " Done!!"