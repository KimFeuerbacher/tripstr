require "open-uri"

# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding"
Sight.destroy_all
City.destroy_all
Category.destroy_all

#Cities

munich = City.create(name: "Munich")
m = URI.open('https://cdn.prod.www.spiegel.de/images/0783d46d-0001-0004-0000-000000016835_w948_r1.778_fpx54_fpy70.jpg')
munich.photo.attach(io: m, filename: "Munich.png", content_type: "image/png")

amsterdam = City.create(name: "Amsterdam")
a = URI.open('https://storage.googleapis.com/stateless-bs33zrig-myraidbox-d/2021/12/Amsterdam-neu-e1638454521123.jpg')
amsterdam.photo.attach(io: a, filename: "Amsterdam.png", content_type: "image/png")

paris = City.create(name: "Paris")
p = URI.open('https://static.dw.com/image/60208186_303.jpg')
paris.photo.attach(io: p, filename: "Paris.png", content_type: "image/png")

barcelona = City.create(name: "Barcelona")
b = URI.open('https://go2barcelona.de/images/barcelona_2.jpg')
barcelona.photo.attach(io: b, filename: "Barcelona.png", content_type: "image/png")

london = City.create(name: "London")
l = URI.open('https://phototravellers.de/wp-content/uploads/2020/03/intro-london-sehenswuerdigkeiten.jpg')
london.photo.attach(io: l, filename: "Barcelona.png", content_type: "image/png")

#Categories
nature_parks = Category.create(title: "Nature & Parks")
sights_landmarks = Category.create(title: "Sights & Landmarks")
nightlife = Category.create(title: "Nightlife")
fun_games = Category.create(title: "Fun & Games")
wellness = Category.create(title: "Wellness")
zoos_aquariums = Category.create(title: "Zoos & Aquariums")

#Sights_for_Munich
#Marienplatz
marienplatz = Sight.create(name: "Marienplatz", latitude: 48.137187, longitude: 11.575501, address: "Marienplatz 80331 München", short_description: "Lorem Impsum", long_description: "Lorem Impsum", city: munich, category: nature_parks)
marienplatz_photo = URI.open('https://mediafiles.urlaubsguru.de/wp-content/uploads/2019/04/Marienplatz-in-Muenchen_shutterstock_1476964067_1920x1280.jpg')
marienplatz.photos.attach(io: marienplatz_photo, filename: "Marienplatz.png", content_type: "image/png")

#Englischer Garten
english_garden = Sight.create(name: "English Garden", latitude: 48.152779, longitude: 11.591944, address: "80331 München", short_description: "Lorem Impsum", long_description: "Lorem Impsum", city: munich, category: sights_landmarks)
english_garden_photo = URI.open('https://www.faszination-bayern.de/media/squarehalf/faszination-bayern-urlaub-englischer-garten.jpg')
english_garden.photos.attach(io: english_garden_photo, filename: "English Garden.png", content_type: "image/png")

#Cafe_Kosmos
alte_utting = Sight.create(name: "Alte Utting", latitude: 48.135124, longitude: 11.581981, address: "Lagerhausstraße 15, 81371 München", short_description: "Lorem Impsum", long_description: "Lorem Impsum", city: munich, category: nightlife)
alte_utting_photo = URI.open('https://img.donaukurier.de/ezplatform/images/0/7/6/4/47114670-1-ger-DE/4115732_normal_KjoTUPDt3x.jpg')
alte_utting.photos.attach(io: alte_utting_photo, filename: "Alte Utting.png", content_type: "image/png")

#Kartpalast
kartpalast = Sight.create(name: "Kartpalast", latitude: 48.2380892, longitude: 11.352445, address: "Gadastraße 9, 85232 Bergkirchen", short_description: "Lorem Impsum", long_description: "Lorem Impsum", city: munich, category: fun_games)
kartpalast_photo = URI.open('https://img.donaukurier.de/ezplatform/images/0/7/6/4/47114670-1-ger-DE/4115732_normal_KjoTUPDt3x.jpg')
kartpalast.photos.attach(io: kartpalast_photo, filename: "Kartpalast.png", content_type: "image/png")

#BlueSpa
bluespa = Sight.create(name: "Blue Spa", latitude: 48.082760, longitude: 11.342280, address: "Promenadepl. 2-6, 80333 München", short_description: "Lorem Impsum", long_description: "Lorem Impsum", city: munich, category: wellness)
bluespa_photo = URI.open('https://www.on-golf.de/wp-content/uploads/2015/05/01-Blue-Spa-Lounge.jpg')
bluespa.photos.attach(io: bluespa_photo, filename: "Bluespa.png", content_type: "image/png")

#TierparkHellabrunn
tierpark = Sight.create(name: "Zoo Hellabrunn", latitude: 48.552325, longitude: 11.3315229, address: "Tierparkstraße 30, 81543 München", short_description: "Lorem Impsum", long_description: "Lorem Impsum", city: munich, category: zoos_aquariums)
tierpark_photo = URI.open('https://www.sueddeutsche.de/image/sz.1.4002099/704x396?v=1528127699')
tierpark.photos.attach(io: tierpark_photo, filename: "Bluespa.png", content_type: "image/png")
