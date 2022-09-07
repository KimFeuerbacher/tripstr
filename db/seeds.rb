require "open-uri"

# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "seeding"
Stop.destroy_all
Sight.destroy_all
Itinerary.destroy_all
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
nature_photo = URI.open('https://res.cloudinary.com/dzlfo631q/image/upload/v1662365763/development/Nature_Parks-lg_mphwap.png')
nature_parks.photo.attach(io: nature_photo, filename: "Nature&Parks_icon.png", content_type: "image/png")

sights_landmarks = Category.create(title: "Sights & Landmarks")
sight_photo = URI.open('https://res.cloudinary.com/dzlfo631q/image/upload/v1662365763/development/Sights_Landmarks-lg_qlvtra.png')
sights_landmarks.photo.attach(io: sight_photo, filename: "Sights&Landmarks_icon.png", content_type: "image/png")

nightlife = Category.create(title: "Nightlife")
nightlife_photo = URI.open('https://res.cloudinary.com/dzlfo631q/image/upload/v1662369763/development/Nightlife-lg_qfx6fz.png')
nightlife.photo.attach(io: nightlife_photo, filename: "nightlife_icon.png", content_type: "image/png")

fun_games = Category.create(title: "Fun & Games")
fun_games_photo = URI.open('https://res.cloudinary.com/dzlfo631q/image/upload/v1662365763/development/Fun_Games-lg_dys574.png')
fun_games.photo.attach(io: fun_games_photo, filename: "fun_games_icon.png", content_type: "image/png")

wellness = Category.create(title: "Wellness")
wellness_photo = URI.open('https://res.cloudinary.com/dzlfo631q/image/upload/v1662365763/development/Wellness-lg_zrw0z5.png')
wellness.photo.attach(io: wellness_photo, filename: "wellness_icon.png", content_type: "image/png")

zoos_aquariums = Category.create(title: "Zoos & Aquariums")
zoos_aquariums_photo = URI.open('https://res.cloudinary.com/dzlfo631q/image/upload/v1662368797/development/zoos_aquariums_slajnn.png')
zoos_aquariums.photo.attach(io: zoos_aquariums_photo, filename: "zoos_aquariums_icon.png", content_type: "image/png")

#Sights_for_Munich
#Marienplatz
marienplatz = Sight.create(name: "Marienplatz", latitude: 48.137187, longitude: 11.575501, address: "Marienplatz 80331 München", short_description: "The central Square in the city center of Munich.", long_description: "Marienplatz was named after the Mariensäule, a Marian column erected in its centre in 1638 to celebrate the end of Swedish occupation. Today the Marienplatz is dominated by the New City Hall (Neues Rathaus) on the north side, and the Old City Hall (Altes Rathaus, a reconstructed gothic council hall with a ballroom and tower) on the east side. The Glockenspiel in the tower of the new city hall was inspired by the tournaments that were held in the square during the Middle Ages, and draws millions of tourists a year. Furthermore, the pedestrian zone between Karlsplatz and Marienplatz is a crowded area with numerous shops and restaurants.", city: munich, category: sights_landmarks)
marienplatz_photo = URI.open('https://mediafiles.urlaubsguru.de/wp-content/uploads/2019/04/Marienplatz-in-Muenchen_shutterstock_1476964067_1920x1280.jpg')
marienplatz_photo_two = URI.open('https://cdn.amber-hotels.de/wp-content/uploads/sites/8/2021/02/amber-hotels-marienplatz-as_115328223-scaled.jpeg')
marienplatz_photo_three = URI.open('https://www.holidaywolf.de/wp/wp-content/uploads/2022/01/marienplatz-muenchen-1024x768.jpg')
marienplatz.photos.attach(io: marienplatz_photo, filename: "Marienplatz.png", content_type: "image/png")
marienplatz.photos.attach(io: marienplatz_photo_two, filename: "Marienplatz_two.png", content_type: "image/png")
marienplatz.photos.attach(io: marienplatz_photo_three, filename: "Marienplatz_three.png", content_type: "image/png")

#Siegestor
siegestor = Sight.create(name: "Siegestor", latitude: 48.151332728, longitude: 11.57583103, address: "Siegestor Leopoldstr. 1 80539 München", short_description: "The Siegestor (English: Victory Gate) in Munich is a three-arched memorial arch, crowned with a statue of Bavaria with a lion-quadriga.", long_description: "The Siegestor (English: Victory Gate) in Munich is a three-arched memorial arch, crowned with a statue of Bavaria with a lion-quadriga. The monument was originally dedicated to the glory of the Bavarian army. Since its restoration following World War II, it now stands as a reminder to peace. The Siegestor is 21 meters high, 24 m wide, and 12 m deep. It is located between the Ludwig Maximilian University and the Ohmstraße, where the Ludwigstraße (south) ends and the Leopoldstraße (north) begins. It thus sits at the boundary between the two Munich districts of Maxvorstadt and Schwabing.", city: munich, category: sights_landmarks)
siegestor_photo = URI.open('https://cdn.muenchen-p.de/.imaging/stk/responsive/image300/dms/shutterstock/siegestor-muenchen0/document/siegestor-muenchen.jpg')
siegestor_photo_two = URI.open('https://kathrinsworld.com/wp-content/gallery/fotospot-siegestor/Fotospot_Siegestor_04.jpg')
siegestor_photo_three = URI.open('https://static.vecteezy.com/ti/fotos-kostenlos/p2/2169691-siegestor-triumphbogen-munchen-deutschland-kostenlos-foto.jpg')
siegestor.photos.attach(io: siegestor_photo, filename: "siegestor.png", content_type: "image/png")
siegestor.photos.attach(io: siegestor_photo_two, filename: "siegestor_two.png", content_type: "image/png")
siegestor.photos.attach(io: siegestor_photo_three, filename: "siegestor_three.png", content_type: "image/png")

#Friedensengel
friedensengel = Sight.create(name: "Friedensengel", latitude: 48.140473, longitude: 11.600054, address: "Prinzregentenstraße, 81675 München", short_description: "The Angel of Peace (German: Friedensengel) is a monument in the Munich suburb of Bogenhausen. The architects were Heinrich Düll, Georg Pezold und Max Heilmaier.", long_description: "The Angel of Peace is part of the Maximilian Park and a point de vue at the eastern end of a line of sight forming Prinzregentenstrasse. Next to the Isar, slightly elevated above street level, is an open space with a fountain; this has a dolphin waterspout surrounded by four smaller waterspouts. Two staircases lead to the observation deck . A column 38 metres high and in the Corinthian style is located here, on top of which is a six-metre statue of the Angel of Peace. It is a replica of the Nike of Paeonius. The Angel of Peace is a reminder of the 25 peaceful years after the Franco-German war of 1870/71. The monument with its small temple shows the portraits of the German Emperors William I, Frederick III, Wilhelm II, the Bavarian rulers Ludwig II, Otto and Luitpold, the Imperial Chancellor Otto von Bismarck and the generals Helmuth von Moltke, Albrecht von Roon, Ludwig von der Tann, Jakob von Hartmann and Siegmund von Pranckh. In the hall of the temple are gold mosaics which depict the allegories of war and peace, victory and blessing for the culture.", city: munich, category: sights_landmarks)
friedensengel_photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/8/84/M%C3%BCnchen_-_Friedensengel_mit_Font%C3%A4ne_%28tone-mapping%29.jpg')
friedensengel_photo_two = URI.open('https://geheimtippmuenchen.de/content/uploads/2021/04/geheimtippmuenchen-muenchen-wissen-friedensengel-wolfgang-goesslinger.jpg')
friedensengel_photo_three = URI.open('https://muenchen.mitvergnuegen.com/wp-content/uploads/sites/3/2017/10/munich-953648_1920-1-1000x667.jpg')
friedensengel.photos.attach(io: friedensengel_photo, filename: "friedensengel.png", content_type: "image/png")
friedensengel.photos.attach(io: friedensengel_photo_two, filename: "friedensengel_two.png", content_type: "image/png")
friedensengel.photos.attach(io: friedensengel_photo_three, filename: "friedensengel_three.png", content_type: "image/png")

#Feldherrnhalle
feldherrnhalle = Sight.create(name: "Feldherrnhalle", latitude: 48.138166114, longitude: 11.57583103, address: "Residenzstraße 1, 80333 München", short_description: "The Feldherrnhalle (Field Marshals' Hall) is a monumental loggia on the Odeonsplatz in Munich, Germany", long_description: "The Feldherrnhalle (Field Marshals' Hall) is a monumental loggia on the Odeonsplatz in Munich, Germany. Modelled after the Loggia dei Lanzi in Florence, it was commissioned in 1841 by King Ludwig I of Bavaria to honour the tradition of the Bavarian Army. In 1923, it was the site of the brief battle that ended Hitler's Beer Hall Putsch. During the Nazi era, it served as a monument commemorating the death of 16 members of the Nazi party.", city: munich, category: sights_landmarks)
feldherrnhalle_photo = URI.open('https://planetofhotels.com/guide/sites/default/files/styles/paragraph__text_with_image___twi_image/public/2022-01/feldherrnhalle-2_0.jpg')
feldherrnhalle_photo_two = URI.open('https://res.cloudinary.com/dnwkhf6i0/images/f_auto,q_auto/v1659020862/Feldherrnhalle_ef_eogjji/Feldherrnhalle_ef_eogjji.jpg')
feldherrnhalle_photo_three = URI.open('https://www.filmlocations-bayern.de/media/Image/12264/LocationFullsizeImage/keyvisual-nr-1671-feldherrnhalle-am-odeonsplatz-in-muenchen-foto-vittorio-sciosia_1_keyvisual-988-x-598px.jpg')
feldherrnhalle.photos.attach(io: feldherrnhalle_photo, filename: "feldherrnhalle.png", content_type: "image/png")
feldherrnhalle.photos.attach(io: feldherrnhalle_photo_two, filename: "feldherrnhalle_two.png", content_type: "image/png")
feldherrnhalle.photos.attach(io: feldherrnhalle_photo_three, filename: "feldherrnhalle_three.png", content_type: "image/png")

#Englischer Garten
english_garden = Sight.create(name: "English Garden", latitude: 48.152779, longitude: 11.591944, address: "80331 München", short_description: "The Englischer Garten is a large public park in the centre of Munich, Bavaria, stretching from the city centre to the northeastern city limits.", long_description: "The Englischer Garten (English Garden) is a large public park in the centre of Munich, Bavaria, stretching from the city centre to the northeastern city limits. It was created in 1789 by Sir Benjamin Thompson (1753–1814), later Count Rumford (Reichsgraf von Rumford), for Prince Charles Theodore, Elector of Bavaria. Thompson's successors, Reinhard von Werneck (1757–1842) and Friedrich Ludwig von Sckell (1750–1823), advisers on the project from its beginning, both extended and improved the park. With an area of 3.7 km2 (1.4 sq mi) (370 ha or 910 acres), the Englischer Garten is one of the world's largest urban public parks. The name refers to its English garden form of informal landscape, a style popular in England from the mid-18th century to the early 19th century and particularly associated with Capability Brown.", city: munich, category: nature_parks)
english_garden_photo = URI.open('https://www.faszination-bayern.de/media/squarehalf/faszination-bayern-urlaub-englischer-garten.jpg')
english_garden_photo_two = URI.open('https://www.stadtrundfahrt.com/magazin/wp-content/uploads/2016/08/englischergarten0017.jpg')
english_garden_photo_three = URI.open('https://www.faszination-bayern.de/media/squarehalf/faszination-bayern-urlaub-englischer-garten.jpg')
english_garden.photos.attach(io: english_garden_photo, filename: "EnglishGarden.png", content_type: "image/png")
english_garden.photos.attach(io: english_garden_photo_two, filename: "EnglishGarden_two.png", content_type: "image/png")
english_garden.photos.attach(io: english_garden_photo_three, filename: "EnglishGarden_three.png", content_type: "image/png")

#Botanischer Garten
botanical_garden = Sight.create(name: "Botanical Garden", latitude: 48.1633, longitude: 11.5005, address: "Menzinger Straße 65 80638 München", short_description: "The Botanischer Garten München-Nymphenburg (21.20 hectares) is a botanical garden and arboretum located at Menzinger Str. 65, Munich, Bavaria, Germany.", long_description: "Today the garden cultivates about 19,600 species and subspecies on approximately 18 hectares. Its mission is to provide a beautiful and restful environment as well as educate the public about plants and nature more broadly. Major collections include an alpine garden, an arboretum, rose collections, and a so-called 'systematic garden' in which plants are arranged by taxonomic families.", city: munich, category: nature_parks)
botanical_garden_photo = URI.open('https://cdn.muenchen-p.de/.imaging/stk/responsive/image300/dms/sw/museen-in-muenchen/60_botanischer_garten/60_2_--Botanischer-Garten-M-nchen/document/60_2_@%20Botanischer%20Garten%20M%C3%BCnchen.jpg')
botanical_garden_photo_two = URI.open('https://cdn.muenchen-p.de/.imaging/stk/responsive/image300/dms/sw/museen-in-muenchen/60_botanischer_garten/60_2_--Botanischer-Garten-M-nchen/document/60_2_@%20Botanischer%20Garten%20M%C3%BCnchen.jpg')
botanical_garden_photo_three = URI.open('https://cdn.muenchen-p.de/.imaging/stk/responsive/image300/dms/sw/museen-in-muenchen/60_botanischer_garten/60_2_--Botanischer-Garten-M-nchen/document/60_2_@%20Botanischer%20Garten%20M%C3%BCnchen.jpg')
botanical_garden.photos.attach(io: botanical_garden_photo, filename: "BotanischerGarten.png", content_type: "image/png")
botanical_garden.photos.attach(io: botanical_garden_photo_two, filename: "BotanischerGarten_two.png", content_type: "image/png")
botanical_garden.photos.attach(io: botanical_garden_photo_three, filename: "BotanischerGarten_three.png", content_type: "image/png")

#Alte Uting
alte_utting = Sight.create(name: "Alte Utting", latitude: 48.135124, longitude: 11.581981, address: "Lagerhausstraße 15, 81371 München", short_description: "Alte Uting is a unique dining spot and Bar in the south of Munich", long_description: "If you visit Munich, this is a place to visit and enjoy. An old ship was transported from a Bavarian lake upon a bridge in Munich, refurbished and redesigned as a bar and meeting spot for culture and fun. Enjoy the sunset on upper deck with nice people.", city: munich, category: nightlife)
alte_utting_photo = URI.open('https://img.donaukurier.de/ezplatform/images/0/7/6/4/47114670-1-ger-DE/4115732_normal_KjoTUPDt3x.jpg')
alte_utting_photo_two = URI.open('https://www.stadtmagazin-muenchen24.de/wp-content/gallery/weihnachtsmarkt-auf-der-alten-utting-2018/20181128-IMG_0035.jpg')
alte_utting_photo_three = URI.open('https://de.m.wikipedia.org/wiki/Datei:Alte_Utting_6170.jpg')
alte_utting.photos.attach(io: alte_utting_photo, filename: "Alte Utting.png", content_type: "image/png")
alte_utting.photos.attach(io: alte_utting_photo_two, filename: "Alte Utting_two.png", content_type: "image/png")
alte_utting.photos.attach(io: alte_utting_photo_three, filename: "Alte Utting_three.png", content_type: "image/png")

#Ory Bar
ory_bar = Sight.create(name: "Ory Bar", latitude: 48.13729, longitude: 11.58076, address: "Neuturmstraße 1, 80331 München", short_description: "ACharacterized by high-quality materials, a generous geometry and the avant-garde atmosphere, the Ory manages on the one hand with a representative elegance to be equal to the Mandarin Oriental, Munich.", long_description: "Characterized by high-quality materials, a generous geometry and the avant-garde atmosphere, the Ory manages on the one hand with a representative elegance to be equal to the Mandarin Oriental, Munich. On the other hand, numerous details, such as the specially developed wall structure, ensure a distinctive, individual character of the room.Thus, the design concept of the architecture firm Selektiv Studio builds the architectural bridge between the high-quality hotel culture and the contemporary demands of a modern Munich bar.", city: munich, category: nightlife)
ory_bar_photo = URI.open('https://makersbible.com/wp-content/uploads/2019/06/Ory-Bar-Munich-Makers-Bible-11.jpg')
ory_bar_photo_two = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgsSGcEBtHNG1N2HT4QNDkqVcOesaVbKNMwg&usqp=CAU')
ory_bar_photo_three = URI.open('https://geheimtippmuenchen.de/content/uploads/2022/03/geheimtipp-muenchen-delight-guide-ory-bar-8-1024x683.jpeg')
ory_bar.photos.attach(io: ory_bar_photo, filename: "Ory Bar.png", content_type: "image/png")
ory_bar.photos.attach(io: ory_bar_photo_two, filename: "Ory Bar_two.png", content_type: "image/png")
ory_bar.photos.attach(io: ory_bar_photo_three, filename: "Ory Bar_three.png", content_type: "image/png")

#Surf_Welle
surf_welle = Sight.create(name: "Eisbach Surfing Wave", latitude: 49.4521993, longitude: 8.6973859, address: "Prinzregentenstraße, 80538 München", short_description: "Artificial Surfing Wave in the Eisbach river at Englischer Garten.", long_description: "Just past a bridge near the Haus der Kunst art museum, the river forms a standing wave about one metre high which is a popular river surfing spot. The water is cold and shallow—sometimes only 40 cm deep—making it only suitable for experienced surfers and playboaters (whitewater kayakers). The wave is predominantly used by surfers, and animosities of surfers towards kayakers have occasionally been reported. The wave has been surfed by river surfers since 1972, and surfing competitions have even been held. Due to the more recent development of playboating, kayakers have only more recently—and so far not in great numbers—started to surf the wave. Since 2010 surfing has been officially permitted on the river. A new sign next to the wave warns that Due to the forceful current, the wave is suitable for skilled and experienced surfers only. In previous years there has been an issue between the authorities, who threatened to remove the wave, and a group of wave supporters who organized activities and a website to save the wave, including an online petition to leave the wave intact. Being a standing wave, it can be surfed for as long as one's balance holds, and in busy times a queue of surfers forms on the bank. In the past surfers tied a leash to the bridge to hold onto, but a sign announces that this is both dangerous and forbidden.", city: munich, category: fun_games)
surf_welle_photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Eisbach_Surfer3.JPG/1280px-Eisbach_Surfer3.JPG')
surf_welle_photo_two = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Eisbach_Surfer3.JPG/1280px-Eisbach_Surfer3.JPG')
surf_welle_photo_three = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Eisbach_Surfer3.JPG/1280px-Eisbach_Surfer3.JPG')
surf_welle.photos.attach(io: surf_welle_photo, filename: "Surfwelle.png", content_type: "image/png")
surf_welle.photos.attach(io: surf_welle_photo_two, filename: "Surfwelle_two.png", content_type: "image/png")
surf_welle.photos.attach(io: surf_welle_photo_three, filename: "Surfwelle_three.png", content_type: "image/png")

#Laser Tag
laser_tag = Sight.create(name: "TerraMars Lasertag", latitude: 48.094835, longitude: 11.524512, address: "Kistlerhofstraße 60, 81379 München", short_description: "Laser tag is a recreational shooting sport where participants use infrared-emitting light guns to tag designated targets.", long_description: "Laser tag is a recreational shooting sport where participants use infrared-emitting light guns to tag designated targets. Infrared-sensitive signaling devices are commonly worn by each player to register hits and are sometimes integrated within the arena in which the game is played. Since its birth in 1979, with the release of the Star Trek Electronic Phasers toy manufactured by the South Bend Electronics brand of Milton Bradley, laser tag has evolved into both indoor and outdoor styles of play, and may include simulations of close quarter combat, role play-style adventure games, or competitive sporting events including tactical configurations and precise game goals. Laser tag is popular with a wide range of ages. Laser tag tournaments are staged for local, regional/state, inter-regional, national, bi-lateral international, and international levels.", city: munich, category: fun_games)
laser_tag_photo = URI.open('https://www.sueddeutsche.de/image/sz.1.2938038/1200x675?v=1519173603')
laser_tag_photo_two = URI.open('https://www.sueddeutsche.de/image/sz.1.2938038/1200x675?v=1519173603')
laser_tag_photo_three = URI.open('https://www.sueddeutsche.de/image/sz.1.2938038/1200x675?v=1519173603')
laser_tag.photos.attach(io: laser_tag_photo, filename: "Lasertag.png", content_type: "image/png")
laser_tag.photos.attach(io: laser_tag_photo_two, filename: "Lasertag_two.png", content_type: "image/png")
laser_tag.photos.attach(io: laser_tag_photo_three, filename: "Lasertag_three.png", content_type: "image/png")

#BlueSpa
bluespa = Sight.create(name: "Blue Spa", latitude: 48.082760, longitude: 11.342280, address: "Promenadepl. 2-6, 80333 München", short_description: "Welcome to Blue SPA, the unique wellness refuge high above Munich.", long_description: "Situated high above the Munich skyline, the Blue Spa is quite literally the hotels crowning glory. Star architect Andrée Putman has created a unique four-storey wellness retreat for body and soul measuring 1,300 m2. Go for a swim in the 6.50 x 14.50 m pool. When the weathers nice, you can even turn it into an open-air pool thanks to the sliding glass roof. And if theres a chill in the air, the open fireplace is sure to keep you warm and cosy. Our range of saunas extends from the extra gentle organic sauna in the ladies area and the mixed Finnish sauna with infusions through to the classic aroma steam bath. An immersion bath and a separate quiet area help guests feel refreshed and relaxed. And with a tanning bed and Munichs finest sun terrace, which overlooks the city, there is nothing left to be desired.", city: munich, category: wellness)
bluespa_photo = URI.open('https://www.on-golf.de/wp-content/uploads/2015/05/01-Blue-Spa-Lounge.jpg')
bluespa_photo_two = URI.open('https://www.on-golf.de/wp-content/uploads/2015/05/01-Blue-Spa-Lounge.jpg')
bluespa_photo_three = URI.open('https://www.on-golf.de/wp-content/uploads/2015/05/01-Blue-Spa-Lounge.jpg')
bluespa.photos.attach(io: bluespa_photo, filename: "Bluespa.png", content_type: "image/png")
bluespa.photos.attach(io: bluespa_photo_two, filename: "Bluespa_two.png", content_type: "image/png")
bluespa.photos.attach(io: bluespa_photo_three, filename: "Bluespa_three.png", content_type: "image/png")

#TheremeErding
therme_erding = Sight.create(name: "Thermal Bath Erding", latitude: 48.29121, longitude: 11.887367, address: "Thermenallee 1-5, 85435 Erding", short_description: "Therme Erding is the largest thermal bath complex in Europe. It is 30 minutes northeast of Munich by car and is visited by around 4000 people every day.", long_description: "The Thermenparadies has a surface area of 27,500 square metres (296,000 sq ft) (9,000 square metres (97,000 sq ft) interior and 18,500 square metres (199,000 sq ft) thermal gardens). The interior is covered by a glass dome which can be half-opened in the summer months. The interior is stands out, with a 1,450 square metres (15,600 sq ft) spa pool, pool bar, grotto, waterfall, neck showers, massage jets, Jacuzzi beds and current channels. Quiet rooms, a massage area, health baths, a steam room, bio-sauna, children's area and a restaurant are all located around the pool. The thermal garden is home to an outside pool which joins directly to the large indoor spa pool, with massage beds as well as sulfur mineral springs, a sandy beach, beach bar, beach volleyball pitch, and outdoor slides.", city: munich, category: wellness)
therme_erding_photo = URI.open('https://mediafiles.reiseuhu.de/wp-content/uploads/2019/10/therme-erding.jpg')
therme_erding_photo_two = URI.open('https://mediafiles.reiseuhu.de/wp-content/uploads/2019/10/therme-erding.jpg')
therme_erding_photo_three = URI.open('https://mediafiles.reiseuhu.de/wp-content/uploads/2019/10/therme-erding.jpg')
therme_erding.photos.attach(io: therme_erding_photo, filename: "Therme Erding.png", content_type: "image/png")
therme_erding.photos.attach(io: therme_erding_photo_two, filename: "Therme Erding_two.png", content_type: "image/png")
therme_erding.photos.attach(io: therme_erding_photo_three, filename: "Therme Erding_three.png", content_type: "image/png")

#TierparkHellabrunn
tierpark = Sight.create(name: "Zoo Hellabrunn", latitude: 48.0552325, longitude: 11.3315229, address: "Tierparkstraße 30, 81543 München", short_description: "A 40 hectar zoological garden in the Bavarian capital of Munich.", long_description: "Hellabrunn Zoo (or Tierpark Hellabrunn in German) is a 40 hectare (99 acre) zoological garden in the Bavarian capital of Munich. The zoo is situated on the right bank of the river Isar, in the southern part of Munich near the quarter of Thalkirchen. A high ratio of enclosures are cageless, relying upon moat features to keep the animals in place. The zoo was the first zoo in the world not organized by species, but also by geographical aspects. For example, the wood bison share their enclosure with prairie dogs. In 2013, the zoo was ranked the fourth best zoo in Europe (up from 12th). It focuses on conservation and captive breeding rare species such as the rare drill and silvery gibbons. Also gorillas, giraffes, elephants, wood bisons, elk and Arctic foxes were successfully bred in the zoo, which houses many species. It is one of the very few zoos that allows visitors to bring dogs. Tierpark Hellabrunn is a member of the European Association of Zoos and Aquaria (EAZA) and the World Association of Zoos and Aquariums (WAZA) and participates in the European Endangered Species Programme", city: munich, category: zoos_aquariums)
tierpark_photo = URI.open('https://www.sueddeutsche.de/image/sz.1.4002099/704x396?v=1528127699')
tierpark_photo_two = URI.open('https://www.sueddeutsche.de/image/sz.1.4002099/704x396?v=1528127699')
tierpark_photo_three = URI.open('https://www.sueddeutsche.de/image/sz.1.4002099/704x396?v=1528127699')
tierpark.photos.attach(io: tierpark_photo, filename: "Tierpark.png", content_type: "image/png")
tierpark.photos.attach(io: tierpark_photo_two, filename: "Tierpark_two.png", content_type: "image/png")
tierpark.photos.attach(io: tierpark_photo_three, filename: "Tierpark_three.png", content_type: "image/png")

#SEA Life Munich
sea_life = Sight.create(name: "SEA Life Munich", latitude: 48.17376, longitude: 11.55629, address: "Willi-Daume-Platz 1, 80809 München", short_description: "Sea Life is a chain of commercial sea life-themed aquarium attractions.", long_description: "Sea Life is a chain of commercial sea life-themed aquarium attractions. As of April 2017 there are 53 Sea Life attractions (including standalone Sea Life centres, mini Sea Life features within resort theme parks, and Legoland submarine rides) around the world. The chain is owned by the British company, Merlin Entertainments.", city: munich, category: zoos_aquariums)
sea_life_photo = URI.open('https://www.visitsealife.com/muenchen/media/4qfdk2li/standardticket-sea-life-muenchen.jpg')
sea_life_photo_two = URI.open('https://www.visitsealife.com/muenchen/media/4qfdk2li/standardticket-sea-life-muenchen.jpg')
sea_life_photo_three = URI.open('https://www.visitsealife.com/muenchen/media/4qfdk2li/standardticket-sea-life-muenchen.jpg')
sea_life.photos.attach(io: sea_life_photo, filename: "SEA Life.png", content_type: "image/png")
sea_life.photos.attach(io: sea_life_photo_two, filename: "SEA Life_two.png", content_type: "image/png")
sea_life.photos.attach(io: sea_life_photo_three, filename: "SEA Life_three.png", content_type: "image/png")
