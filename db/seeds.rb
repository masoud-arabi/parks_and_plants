# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroy all DB"
Garden.destroy_all
Tag.destroy_all
puts "create DB"
Garden.create(name: "Boltanical park montreal", banner_url: "https://montrealvisitorsguide.com/wp-content/uploads/montreal-botanical-garden-main.jpg")
puts "create montrteal park"
Garden.create(name: "Babilon park", banner_url: "https://i.pinimg.com/originals/f2/74/3b/f2743bc957eaa00903f9348bdf14ec91.jpg")
puts "create Babylon park"


puts "create tag name"

tag_names = ['flowers', 'indoor', 'tree', 'evergreen', 'outdoor', 'recreational']

tag_names.each do |tag_name|
    Tag.create(name: tag_name)
end
puts "created tag name"