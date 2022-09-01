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
marienplatz = Sight.create(name: "Marienplatz", latitude: 48.137187, longitude: 11.575501, address: "Marienplatz 80331 München", short_description: "The central Square in the city center of Munich.", long_description: "Marienplatz was named after the Mariensäule, a Marian column erected in its centre in 1638 to celebrate the end of Swedish occupation. Today the Marienplatz is dominated by the New City Hall (Neues Rathaus) on the north side, and the Old City Hall (Altes Rathaus, a reconstructed gothic council hall with a ballroom and tower) on the east side. The Glockenspiel in the tower of the new city hall was inspired by the tournaments that were held in the square during the Middle Ages, and draws millions of tourists a year. Furthermore, the pedestrian zone between Karlsplatz and Marienplatz is a crowded area with numerous shops and restaurants.", city: munich, category: nature_parks)
marienplatz_photo = URI.open('https://mediafiles.urlaubsguru.de/wp-content/uploads/2019/04/Marienplatz-in-Muenchen_shutterstock_1476964067_1920x1280.jpg')
marienplatz.photos.attach(io: marienplatz_photo, filename: "Marienplatz.png", content_type: "image/png")

#Englischer Garten
english_garden = Sight.create(name: "English Garden", latitude: 48.152779, longitude: 11.591944, address: "80331 München", short_description: "The Englischer Garten is a large public park in the centre of Munich, Bavaria, stretching from the city centre to the northeastern city limits.", long_description: "The Englischer Garten (English Garden) is a large public park in the centre of Munich, Bavaria, stretching from the city centre to the northeastern city limits. It was created in 1789 by Sir Benjamin Thompson (1753–1814), later Count Rumford (Reichsgraf von Rumford), for Prince Charles Theodore, Elector of Bavaria. Thompson's successors, Reinhard von Werneck (1757–1842) and Friedrich Ludwig von Sckell (1750–1823), advisers on the project from its beginning, both extended and improved the park. With an area of 3.7 km2 (1.4 sq mi) (370 ha or 910 acres), the Englischer Garten is one of the world's largest urban public parks. The name refers to its English garden form of informal landscape, a style popular in England from the mid-18th century to the early 19th century and particularly associated with Capability Brown.", city: munich, category: sights_landmarks)
english_garden_photo = URI.open('https://www.faszination-bayern.de/media/squarehalf/faszination-bayern-urlaub-englischer-garten.jpg')
english_garden.photos.attach(io: english_garden_photo, filename: "EnglishGarden.png", content_type: "image/png")

#Cafe_Kosmos
alte_utting = Sight.create(name: "Alte Utting", latitude: 48.135124, longitude: 11.581981, address: "Lagerhausstraße 15, 81371 München", short_description: "Alte Uting is a unique dining spot and Bar in the south of Munich", long_description: "If you visit Munich, this is a place to visit and enjoy. An old ship was transported from a Bavarian lake upon a bridge in Munich, refurbished and redesigned as a bar and meeting spot for culture and fun. Enjoy the sunset on upper deck with nice people.", city: munich, category: nightlife)
alte_utting_photo = URI.open('https://img.donaukurier.de/ezplatform/images/0/7/6/4/47114670-1-ger-DE/4115732_normal_KjoTUPDt3x.jpg')
alte_utting.photos.attach(io: alte_utting_photo, filename: "Alte Utting.png", content_type: "image/png")

#Surf_Welle
surf_welle = Sight.create(name: "Eisbach Surfwelle", latitude: 49.4521993, longitude: 8.6973859, address: "Prinzregentenstraße, 80538 München", short_description: "Artificial Surfing Wave in the Eisbach river at Englischer Garten.", long_description: "Just past a bridge near the Haus der Kunst art museum, the river forms a standing wave about one metre high which is a popular river surfing spot. The water is cold and shallow—sometimes only 40 cm deep—making it only suitable for experienced surfers and playboaters (whitewater kayakers). The wave is predominantly used by surfers, and animosities of surfers towards kayakers have occasionally been reported. The wave has been surfed by river surfers since 1972, and surfing competitions have even been held. Due to the more recent development of playboating, kayakers have only more recently—and so far not in great numbers—started to surf the wave. Since 2010 surfing has been officially permitted on the river. A new sign next to the wave warns that Due to the forceful current, the wave is suitable for skilled and experienced surfers only. In previous years there has been an issue between the authorities, who threatened to remove the wave, and a group of wave supporters who organized activities and a website to save the wave, including an online petition to leave the wave intact. Being a standing wave, it can be surfed for as long as one's balance holds, and in busy times a queue of surfers forms on the bank. In the past surfers tied a leash to the bridge to hold onto, but a sign announces that this is both dangerous and forbidden.", city: munich, category: fun_games)
surf_welle_photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Eisbach_Surfer3.JPG/1280px-Eisbach_Surfer3.JPG')
surf_welle.photos.attach(io: surf_welle_photo, filename: "Surfwelle.png", content_type: "image/png")

#BlueSpa
bluespa = Sight.create(name: "Blue Spa", latitude: 48.082760, longitude: 11.342280, address: "Promenadepl. 2-6, 80333 München", short_description: "Welcome to Blue SPA, the unique wellness refuge high above Munich.", long_description: "Situated high above the Munich skyline, the Blue Spa is quite literally the hotels crowning glory. Star architect Andrée Putman has created a unique four-storey wellness retreat for body and soul measuring 1,300 m2. Go for a swim in the 6.50 x 14.50 m pool. When the weathers nice, you can even turn it into an open-air pool thanks to the sliding glass roof. And if theres a chill in the air, the open fireplace is sure to keep you warm and cosy. Our range of saunas extends from the extra gentle organic sauna in the ladies area and the mixed Finnish sauna with infusions through to the classic aroma steam bath. An immersion bath and a separate quiet area help guests feel refreshed and relaxed. And with a tanning bed and Munichs finest sun terrace, which overlooks the city, there is nothing left to be desired.", city: munich, category: wellness)
bluespa_photo = URI.open('https://www.on-golf.de/wp-content/uploads/2015/05/01-Blue-Spa-Lounge.jpg')
bluespa.photos.attach(io: bluespa_photo, filename: "Bluespa.png", content_type: "image/png")

#TierparkHellabrunn
tierpark = Sight.create(name: "Zoo Hellabrunn", latitude: 48.0552325, longitude: 11.3315229, address: "Tierparkstraße 30, 81543 München", short_description: "A 40 hectar zoological garden in the Bavarian capital of Munich.", long_description: "Hellabrunn Zoo (or Tierpark Hellabrunn in German) is a 40 hectare (99 acre) zoological garden in the Bavarian capital of Munich. The zoo is situated on the right bank of the river Isar, in the southern part of Munich near the quarter of Thalkirchen. A high ratio of enclosures are cageless, relying upon moat features to keep the animals in place. The zoo was the first zoo in the world not organized by species, but also by geographical aspects. For example, the wood bison share their enclosure with prairie dogs. In 2013, the zoo was ranked the fourth best zoo in Europe (up from 12th). It focuses on conservation and captive breeding rare species such as the rare drill and silvery gibbons. Also gorillas, giraffes, elephants, wood bisons, elk and Arctic foxes were successfully bred in the zoo, which houses many species. It is one of the very few zoos that allows visitors to bring dogs. Tierpark Hellabrunn is a member of the European Association of Zoos and Aquaria (EAZA) and the World Association of Zoos and Aquariums (WAZA) and participates in the European Endangered Species Programme", city: munich, category: zoos_aquariums)
tierpark_photo = URI.open('https://www.sueddeutsche.de/image/sz.1.4002099/704x396?v=1528127699')
tierpark.photos.attach(io: tierpark_photo, filename: "Tierpark.png", content_type: "image/png")
