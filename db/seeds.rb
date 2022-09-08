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
sight_photo = URI.open('https://res.cloudinary.com/dzlfo631q/image/upload/v1662624979/development/Group_34_1_bpvoii.png')
sights_landmarks.photo.attach(io: sight_photo, filename: "Sights&Landmarks_icon.png", content_type: "image/png")

nightlife = Category.create(title: "Nightlife")
nightlife_photo = URI.open('https://res.cloudinary.com/dzlfo631q/image/upload/v1662624979/development/Group_37_2_zvuztv.png')
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
marienplatz = Sight.create(name: "Marienplatz", latitude: 48.137187, longitude: 11.575501, address: "Marienplatz, 80331 München", short_description: "The central Square in the city center of Munich.", long_description: "Marienplatz was named after the Mariensäule, a Marian column erected in its centre in 1638 to celebrate the end of Swedish occupation. Today the Marienplatz is dominated by the New City Hall (Neues Rathaus) on the north side, and the Old City Hall (Altes Rathaus, a reconstructed gothic council hall with a ballroom and tower) on the east side. The Glockenspiel in the tower of the new city hall was inspired by the tournaments that were held in the square during the Middle Ages, and draws millions of tourists a year. Furthermore, the pedestrian zone between Karlsplatz and Marienplatz is a crowded area with numerous shops and restaurants.", city: munich, category: sights_landmarks)
marienplatz_photo = URI.open('https://mediafiles.urlaubsguru.de/wp-content/uploads/2019/04/Marienplatz-in-Muenchen_shutterstock_1476964067_1920x1280.jpg')
marienplatz_photo_two = URI.open('https://cdn.amber-hotels.de/wp-content/uploads/sites/8/2021/02/amber-hotels-marienplatz-as_115328223-scaled.jpeg')
marienplatz_photo_three = URI.open('https://www.holidaywolf.de/wp/wp-content/uploads/2022/01/marienplatz-muenchen-1024x768.jpg')
marienplatz.photos.attach(io: marienplatz_photo, filename: "Marienplatz.png", content_type: "image/png")
marienplatz.photos.attach(io: marienplatz_photo_two, filename: "Marienplatz_two.png", content_type: "image/png")
marienplatz.photos.attach(io: marienplatz_photo_three, filename: "Marienplatz_three.png", content_type: "image/png")

#Siegestor
siegestor = Sight.create(name: "Siegestor", latitude: 48.151332728, longitude: 11.57583103, address: "Siegestor Leopoldstr. 1, 80539 München", short_description: "The Siegestor (English: Victory Gate) in Munich is a three-arched memorial arch, crowned with a statue of Bavaria with a lion-quadriga.", long_description: "The Siegestor (English: Victory Gate) in Munich is a three-arched memorial arch, crowned with a statue of Bavaria with a lion-quadriga. The monument was originally dedicated to the glory of the Bavarian army. Since its restoration following World War II, it now stands as a reminder to peace. The Siegestor is 21 meters high, 24 m wide, and 12 m deep. It is located between the Ludwig Maximilian University and the Ohmstraße, where the Ludwigstraße (south) ends and the Leopoldstraße (north) begins. It thus sits at the boundary between the two Munich districts of Maxvorstadt and Schwabing.", city: munich, category: sights_landmarks)
siegestor_photo = URI.open('https://cdn.muenchen-p.de/.imaging/stk/responsive/image300/dms/shutterstock/siegestor-muenchen0/document/siegestor-muenchen.jpg')
siegestor_photo_two = URI.open('https://kathrinsworld.com/wp-content/gallery/fotospot-siegestor/Fotospot_Siegestor_04.jpg')
siegestor_photo_three = URI.open('https://static.vecteezy.com/ti/fotos-kostenlos/p2/2169691-siegestor-triumphbogen-munchen-deutschland-kostenlos-foto.jpg')
siegestor.photos.attach(io: siegestor_photo, filename: "siegestor.png", content_type: "image/png")
siegestor.photos.attach(io: siegestor_photo_two, filename: "siegestor_two.png", content_type: "image/png")
siegestor.photos.attach(io: siegestor_photo_three, filename: "siegestor_three.png", content_type: "image/png")

#Friedensengel
friedensengel = Sight.create(name: "Friedensengel", latitude: 48.140473, longitude: 11.600054, address: "Prinzregentenstraße, 81675 München", short_description: "The Angel of Peace (German: Friedensengel) is a monument in the Munich suburb of Bogenhausen.", long_description: "The Angel of Peace is part of the Maximilian Park and a point de vue at the eastern end of a line of sight forming Prinzregentenstrasse. Next to the Isar, slightly elevated above street level, is an open space with a fountain; this has a dolphin waterspout surrounded by four smaller waterspouts. Two staircases lead to the observation deck . A column 38 metres high and in the Corinthian style is located here, on top of which is a six-metre statue of the Angel of Peace. It is a replica of the Nike of Paeonius. The Angel of Peace is a reminder of the 25 peaceful years after the Franco-German war of 1870/71. The monument with its small temple shows the portraits of the German Emperors William I, Frederick III, Wilhelm II, the Bavarian rulers Ludwig II, Otto and Luitpold, the Imperial Chancellor Otto von Bismarck and the generals Helmuth von Moltke, Albrecht von Roon, Ludwig von der Tann, Jakob von Hartmann and Siegmund von Pranckh. In the hall of the temple are gold mosaics which depict the allegories of war and peace, victory and blessing for the culture.", city: munich, category: sights_landmarks)
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

#SchlossNymphenburg
schlossnymphenburg = Sight.create(name: "Nymphenburg Palace", latitude: 48.158056, longitude: 11.503611, address: "Schloß Nymphenburg 1, 80638 München", short_description: "The Nymphenburg Palace (German: Schloss Nymphenburg) is a Baroque palace in Munich, Bavaria, southern Germany.", long_description: "The Nymphenburg Palace (German: Schloss Nymphenburg, Palace of the Nymphs) is a Baroque palace situated in Munich's western district Neuhausen-Nymphenburg, in Bavaria, southern Germany. Combined with the adjacent Nymphenburg Palace Park it constitutes one of the premier royal palaces of Europe. Its frontal width of 632 m (2,073 ft) (north–south axis) even surpasses Versailles Palace. The Nymphenburg served as the main summer residence for the former rulers of Bavaria of the House of Wittelsbach.", city: munich, category: sights_landmarks)
schlossnymphenburg_photo = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Exterior_del_Palacio_de_Nymphenburg%2C_M%C3%BAnich%2C_Alemania61.JPG/1200px-Exterior_del_Palacio_de_Nymphenburg%2C_M%C3%BAnich%2C_Alemania61.JPG')
schlossnymphenburg_photo_two = URI.open('https://cdn.muenchen-p.de/.imaging/stk/responsive/galleryLarge/dms/sw/bg/gaerten_parks_und_friedhoefe/schlosspark_nymphenburg/Schloss_11/document/Schloss_11.jpg')
schlossnymphenburg_photo_three = URI.open('https://www.amber-hotels.de/wp-content/uploads/sites/8/2021/02/amber-hotels-nymphenburg-as_231159432-scaled.jpeg')
schlossnymphenburg.photos.attach(io: schlossnymphenburg_photo, filename: "schlossnymphenburg.png", content_type: "image/png")
schlossnymphenburg.photos.attach(io: schlossnymphenburg_photo_two, filename: "schlossnymphenburg_two.png", content_type: "image/png")
schlossnymphenburg.photos.attach(io: schlossnymphenburg_photo_three, filename: "schlossnymphenburg_three.png", content_type: "image/png")

#Englischer Garten
english_garden = Sight.create(name: "English Garden", latitude: 48.152779, longitude: 11.591944, address: "Englischer Garten, 80331 München", short_description: "The Englischer Garten is a large public park in the centre of Munich, Bavaria, stretching from the city centre to the northeastern city limits.", long_description: "The Englischer Garten (English Garden) is a large public park in the centre of Munich, Bavaria, stretching from the city centre to the northeastern city limits. It was created in 1789 by Sir Benjamin Thompson (1753–1814), later Count Rumford (Reichsgraf von Rumford), for Prince Charles Theodore, Elector of Bavaria. Thompson's successors, Reinhard von Werneck (1757–1842) and Friedrich Ludwig von Sckell (1750–1823), advisers on the project from its beginning, both extended and improved the park. With an area of 3.7 km2 (1.4 sq mi) (370 ha or 910 acres), the Englischer Garten is one of the world's largest urban public parks. The name refers to its English garden form of informal landscape, a style popular in England from the mid-18th century to the early 19th century and particularly associated with Capability Brown.", city: munich, category: nature_parks)
english_garden_photo = URI.open('https://www.faszination-bayern.de/media/squarehalf/faszination-bayern-urlaub-englischer-garten.jpg')
english_garden_photo_two = URI.open('https://www.stadtrundfahrt.com/magazin/wp-content/uploads/2016/08/englischergarten0017.jpg')
english_garden_photo_three = URI.open('https://www.faszination-bayern.de/media/squarehalf/faszination-bayern-urlaub-englischer-garten.jpg')
english_garden.photos.attach(io: english_garden_photo, filename: "EnglishGarden.png", content_type: "image/png")
english_garden.photos.attach(io: english_garden_photo_two, filename: "EnglishGarden_two.png", content_type: "image/png")
english_garden.photos.attach(io: english_garden_photo_three, filename: "EnglishGarden_three.png", content_type: "image/png")

#Botanischer Garten
botanical_garden = Sight.create(name: "Botanical Garden", latitude: 48.1633, longitude: 11.5005, address: "Menzinger Straße 65 80638 München", short_description: "The Botanischer Garten München-Nymphenburg (21.20 hectares) is a botanical garden and arboretum.", long_description: "Today the garden cultivates about 19,600 species and subspecies on approximately 18 hectares. Its mission is to provide a beautiful and restful environment as well as educate the public about plants and nature more broadly. Major collections include an alpine garden, an arboretum, rose collections, and a so-called 'systematic garden' in which plants are arranged by taxonomic families.", city: munich, category: nature_parks)
botanical_garden_photo = URI.open('https://cdn.muenchen-p.de/.imaging/stk/responsive/image300/dms/sw/museen-in-muenchen/60_botanischer_garten/60_2_--Botanischer-Garten-M-nchen/document/60_2_@%20Botanischer%20Garten%20M%C3%BCnchen.jpg')
botanical_garden_photo_two = URI.open('https://hotel-erb.de/wp-content/uploads/2021/11/munich-gc2a8f60b1-1920.jpg')
botanical_garden_photo_three = URI.open('https://mein-muenchen.de/wp-content/uploads/2022/02/Header_1050x590-5.jpg')
botanical_garden.photos.attach(io: botanical_garden_photo, filename: "BotanischerGarten.png", content_type: "image/png")
botanical_garden.photos.attach(io: botanical_garden_photo_two, filename: "BotanischerGarten_two.png", content_type: "image/png")
botanical_garden.photos.attach(io: botanical_garden_photo_three, filename: "BotanischerGarten_three.png", content_type: "image/png")

#Hofgarten
hof_garden = Sight.create(name: "Hofgarten", latitude: 48.138999444, longitude: 11.574664368, address: "Hofgartenstraße 1, 80538 München", short_description: "The Hofgarten (Court Garden) is a garden in the center of Munich, Germany, located between the Residenz and the Englischer Garten..", long_description: "The garden was built in 1613–1617 by Maximilian I, Elector of Bavaria in the style of Italian Renaissance garden. In the center of the garden is a pavilion for the goddess Diana, built-in 1615 by Heinrich Schön the elder. A path leads from each of the eight arches. On the roof of the Diana pavilion, is the replica of a sculpture of Bavaria by Hubert Gerhard, created in 1623. The original is in the Kaisersaal of the Residenz.Facing the Hofgarten on the east side is the Bavarian Staatskanzlei (State Chancellery), housed in the former Army Museum, with the addition of glass wings left and right of the original building. The repurposed building was completed in 1993. A few steps more eastwards the Hofgartenkaserne was located from 1801 to 1899. In front of the Staatskanzlei, the Kriegerdenkmal (war memorial) is located, built for commemoration of the Munich people, killed in action in World War I.", city: munich, category: nature_parks)
hof_garden_photo = URI.open('https://cdn2.civitatis.com/alemania/munich/guia/hofgarten.jpg')
hof_garden_photo_two = URI.open('https://www.filmlocations-bayern.de/media/Image/12610/LocationFullsizeImage/keyvisual-nr-1650-luftaufnahme-hofgarten-muenchen-foto_keyvisual-988-x-598px.jpg')
hof_garden_photo_three = URI.open('https://www.bayreuth-tourismus.de/wp-content/uploads/2019/02/HofgartencMeike-Kratzer.jpg')
hof_garden.photos.attach(io: hof_garden_photo, filename: "hof.png", content_type: "image/png")
hof_garden.photos.attach(io: hof_garden_photo_two, filename: "hof_two.png", content_type: "image/png")
hof_garden.photos.attach(io: hof_garden_photo_three, filename: "hof_three.png", content_type: "image/png")

#Luidpoltpark
luidpoltpark = Sight.create(name: "Luidpoldpark", latitude: 48.174807, longitude: 11.5704, address: "Brunnerstraße 2, 80804 München", short_description: "Luitpoldpark is a public park in the Schwabing-West borough of Munich, Germany", long_description: "The Englischer Garten (English Garden) is a large public park in the centre of Munich, Bavaria, stretching from the city centre to the northeastern city limits. It was created in 1789 by Sir Benjamin Thompson (1753–1814), later Count Rumford (Reichsgraf von Rumford), for Prince Charles Theodore, Elector of Bavaria. Thompson's successors, Reinhard von Werneck (1757–1842) and Friedrich Ludwig von Sckell (1750–1823), advisers on the project from its beginning, both extended and improved the park. With an area of 3.7 km2 (1.4 sq mi) (370 ha or 910 acres), the Englischer Garten is one of the world's largest urban public parks. The name refers to its English garden form of informal landscape, a style popular in England from the mid-18th century to the early 19th century and particularly associated with Capability Brown.", city: munich, category: nature_parks)
luidpoltpark_photo = URI.open('https://images.portal.muenchen.de/000/000/218/178/versions/luitpoldpark-sommer750.jpg')
luidpoltpark_photo_two = URI.open('https://img2.oastatic.com/img2/15712848/max/der-luitpoldpark-in-muenchen-im-herbst.jpg')
luidpoltpark_photo_three = URI.open('https://cdn.muenchen-p.de/.imaging/stk/responsive/image300/dms/sw/bg/gaerten_parks_und_friedhoefe/luitpoldpark/03-luitpoldpark/document/03-luitpoldpark.jpg')
luidpoltpark.photos.attach(io: luidpoltpark_photo, filename: "luidpoltpark.png", content_type: "image/png")
luidpoltpark.photos.attach(io: luidpoltpark_photo_two, filename: "luidpoltpark_two.png", content_type: "image/png")
luidpoltpark.photos.attach(io: luidpoltpark_photo_three, filename: "luidpoltpark_three.png", content_type: "image/png")

#Alte Uting
alte_utting = Sight.create(name: "Alte Utting", latitude: 48.135124, longitude: 11.581981, address: "Lagerhausstraße 15, 81371 München", short_description: "Alte Uting is a unique dining spot and Bar in the south of Munich", long_description: "If you visit Munich, this is a place to visit and enjoy. An old ship was transported from a Bavarian lake upon a bridge in Munich, refurbished and redesigned as a bar and meeting spot for culture and fun. Enjoy the sunset on upper deck with nice people.", city: munich, category: nightlife)
alte_utting_photo = URI.open('https://img.donaukurier.de/ezplatform/images/0/7/6/4/47114670-1-ger-DE/4115732_normal_KjoTUPDt3x.jpg')
alte_utting_photo_two = URI.open('https://www.stadtmagazin-muenchen24.de/wp-content/gallery/weihnachtsmarkt-auf-der-alten-utting-2018/20181128-IMG_0035.jpg')
alte_utting_photo_three = URI.open('https://de.m.wikipedia.org/wiki/Datei:Alte_Utting_6170.jpg')
alte_utting.photos.attach(io: alte_utting_photo, filename: "Alte Utting.png", content_type: "image/png")
alte_utting.photos.attach(io: alte_utting_photo_two, filename: "Alte Utting_two.png", content_type: "image/png")
alte_utting.photos.attach(io: alte_utting_photo_three, filename: "Alte Utting_three.png", content_type: "image/png")

#Ory Bar
ory_bar = Sight.create(name: "Ory Bar Munich", latitude: 48.13729, longitude: 11.58076, address: "Neuturmstraße 1, 80331 München", short_description: "Characterized by high-quality materials, a generous geometry and the avant-garde atmosphere Ory is a Bar worth a visit.", long_description: "Characterized by high-quality materials, a generous geometry and the avant-garde atmosphere, the Ory manages on the one hand with a representative elegance to be equal to the Mandarin Oriental, Munich. On the other hand, numerous details, such as the specially developed wall structure, ensure a distinctive, individual character of the room.Thus, the design concept of the architecture firm Selektiv Studio builds the architectural bridge between the high-quality hotel culture and the contemporary demands of a modern Munich bar.", city: munich, category: nightlife)
ory_bar_photo = URI.open('https://makersbible.com/wp-content/uploads/2019/06/Ory-Bar-Munich-Makers-Bible-11.jpg')
ory_bar_photo_two = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgsSGcEBtHNG1N2HT4QNDkqVcOesaVbKNMwg&usqp=CAU')
ory_bar_photo_three = URI.open('https://geheimtippmuenchen.de/content/uploads/2022/03/geheimtipp-muenchen-delight-guide-ory-bar-8-1024x683.jpeg')
ory_bar.photos.attach(io: ory_bar_photo, filename: "Ory Bar.png", content_type: "image/png")
ory_bar.photos.attach(io: ory_bar_photo_two, filename: "Ory Bar_two.png", content_type: "image/png")
ory_bar.photos.attach(io: ory_bar_photo_three, filename: "Ory Bar_three.png", content_type: "image/png")

#Herzog Bar
herzog = Sight.create(name: "Herzog Bar and Restaurant", latitude: 48.137646, longitude: 11.566353, address: "Maxburgstraße 4, 80333 München", short_description: "In the heart of downtown Munich, amidst baroque and historic buildings, the Herzog Restaurant & Bar has opened its doors to you", long_description: "Characterized by high-quality materials, a generous geometry and the avant-garde atmosphere, the Ory manages on the one hand with a representative elegance to be equal to the Mandarin Oriental, Munich. On the other hand, numerous details, such as the specially developed wall structure, ensure a distinctive, individual character of the room.Thus, the design concept of the architecture firm Selektiv Studio builds the architectural bridge between the high-quality hotel culture and the contemporary demands of a modern Munich bar.", city: munich, category: nightlife)
herzog_photo = URI.open('https://images.otstatic.com/prod/25702158/1/huge.jpg')
herzog_photo_two = URI.open('https://herzog.bar/wp-content/uploads/2022/03/Herzog-1.jpg')
herzog_photo_three = URI.open('https://geheimtippmuenchen.de/content/uploads/2020/10/geheimtipp-muenchen-delight-guide-muenchen-bar-herzog-20.jpg')
herzog.photos.attach(io: herzog_photo, filename: "herzog.png", content_type: "image/png")
herzog.photos.attach(io: herzog_photo_two, filename: "herzog_two.png", content_type: "image/png")
herzog.photos.attach(io: herzog_photo_three, filename: "herzog_three.png", content_type: "image/png")

#HeyLuigi
heyluigi = Sight.create(name: "Hey Luigi!", latitude: 48.12896226366431, longitude: 11.568450159492361, address: "Holzstraße 29, 80469 München", short_description: "Trendy bar & restaurant with a lively atmosphere, outdoor tables and a selection of international dishes..", long_description: "At least since Barney Stinson in How I Met Your Mother we know that new is always better. Thats why were always happy to present new locations. But with so many new discoveries, it's easy to forget the old pearls that you love but that are perhaps just too obvious for you. Hey Luigi in Glockenbach is definitely one of them, because the restaurant has actually been around for twelve years. And because we can't completely do without the new factor, we not only present this great shop to you, but also the completely revised menu. Hey Luigi has always been known for good pasta and intimidatingly large portions, but with the relaunch of the menu, the culinary offer is now on a different level.", city: munich, category: nightlife)
heyluigi_photo = URI.open('https://www.stadtgui.de/_images/heyluigi_20200202%20(2).jpg')
heyluigi_photo_two = URI.open('https://www.in-muenchen.de/bilder/2020/01/21/13455972/552034681-wirtshaeuser-muenchen-1Pfe.jpg')
heyluigi_photo_three = URI.open('https://www.abendzeitung-muenchen.de/storage/image/9/9/1/6/1176199_artikelbild_1wKgzi_atSco0.jpg')
heyluigi.photos.attach(io: heyluigi_photo, filename: "heyluigi.png", content_type: "image/png")
heyluigi.photos.attach(io: heyluigi_photo_two, filename: "heyluigi_two.png", content_type: "image/png")
heyluigi.photos.attach(io: heyluigi_photo_three, filename: "heyluigi_three.png", content_type: "image/png")

#Surf_Welle
surf_welle = Sight.create(name: "Eisbach Surfing Wave", latitude: 48.4521993, longitude: 11.6973859, address: "Prinzregentenstraße, 80538 München", short_description: "Artificial Surfing Wave in the Eisbach river at Englischer Garten.", long_description: "Just past a bridge near the Haus der Kunst art museum, the river forms a standing wave about one metre high which is a popular river surfing spot. The water is cold and shallow—sometimes only 40 cm deep—making it only suitable for experienced surfers and playboaters (whitewater kayakers). The wave is predominantly used by surfers, and animosities of surfers towards kayakers have occasionally been reported. The wave has been surfed by river surfers since 1972, and surfing competitions have even been held. Due to the more recent development of playboating, kayakers have only more recently—and so far not in great numbers—started to surf the wave. Since 2010 surfing has been officially permitted on the river. A new sign next to the wave warns that Due to the forceful current, the wave is suitable for skilled and experienced surfers only. In previous years there has been an issue between the authorities, who threatened to remove the wave, and a group of wave supporters who organized activities and a website to save the wave, including an online petition to leave the wave intact. Being a standing wave, it can be surfed for as long as one's balance holds, and in busy times a queue of surfers forms on the bank. In the past surfers tied a leash to the bridge to hold onto, but a sign announces that this is both dangerous and forbidden.", city: munich, category: fun_games)
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

#Escape Game Munich
escape_game = Sight.create(name: "Escape Game Munich", latitude: 48.1555275407146, longitude: 11.573760104096852, address: "Tengstraße 20, 80798 München", short_description: "An escape room, also known as an escape game, is a game where a team solves puzzles and clues.", long_description: "An escape room, also known as an escape game, puzzle room, or exit game, is a game in which a team of players discover clues, solve puzzles, and accomplish tasks in one or more rooms in order to accomplish a specific goal in a limited amount of time. The goal is often to escape from the site of the game. Most escape games are cooperative but competitive variants exist.[3] Escape rooms became popular in North America, Europe, and East Asia in the 2010s. Permanent escape rooms in fixed locations were first opened in Asia and followed later in Hungary, Serbia, Australia, New Zealand, Russia, and South America.", city: munich, category: fun_games)
escape_game_photo = URI.open('https://escapegame-muenchen.de/wp-content/uploads/2020/06/Der-Puppen-Spieler-Escape-Game-Muenchen.jpg')
escape_game_photo_two = URI.open('https://www.munichmag.de/app/uploads/2016/10/tutanchamun_escapegame.jpg')
escape_game_photo_three = URI.open('https://www.turbopass.de/3955-carousel/escape-game-zauber.jpg')
escape_game.photos.attach(io: escape_game_photo, filename: "escapegame.png", content_type: "image/png")
escape_game.photos.attach(io: escape_game_photo_two, filename: "escapegame_two.png", content_type: "image/png")
escape_game.photos.attach(io: escape_game_photo_three, filename: "escapegame_three.png", content_type: "image/png")

#BlueSpa
bluespa = Sight.create(name: "Blue Spa", latitude: 48.082760, longitude: 11.342280, address: "Promenadepl. 2-6, 80333 München", short_description: "Welcome to Blue SPA, the unique wellness refuge high above Munich.", long_description: "Situated high above the Munich skyline, the Blue Spa is quite literally the hotels crowning glory. Star architect Andrée Putman has created a unique four-storey wellness retreat for body and soul measuring 1,300 m2. Go for a swim in the 6.50 x 14.50 m pool. When the weathers nice, you can even turn it into an open-air pool thanks to the sliding glass roof. And if theres a chill in the air, the open fireplace is sure to keep you warm and cosy. Our range of saunas extends from the extra gentle organic sauna in the ladies area and the mixed Finnish sauna with infusions through to the classic aroma steam bath. An immersion bath and a separate quiet area help guests feel refreshed and relaxed. And with a tanning bed and Munichs finest sun terrace, which overlooks the city, there is nothing left to be desired.", city: munich, category: wellness)
bluespa_photo = URI.open('https://www.on-golf.de/wp-content/uploads/2015/05/01-Blue-Spa-Lounge.jpg')
bluespa_photo_two = URI.open('https://www.on-golf.de/wp-content/uploads/2015/05/01-Blue-Spa-Lounge.jpg')
bluespa_photo_three = URI.open('https://www.on-golf.de/wp-content/uploads/2015/05/01-Blue-Spa-Lounge.jpg')
bluespa.photos.attach(io: bluespa_photo, filename: "Bluespa.png", content_type: "image/png")
bluespa.photos.attach(io: bluespa_photo_two, filename: "Bluespa_two.png", content_type: "image/png")
bluespa.photos.attach(io: bluespa_photo_three, filename: "Bluespa_three.png", content_type: "image/png")

#TheremeErding
therme_erding = Sight.create(name: "Thermal Bath Erding", latitude: 48.29121, longitude: 11.887367, address: "Thermenallee 1-5, 85435 Erding", short_description: "Therme Erding is the largest thermal bath complex in Europe.", long_description: "The Thermenparadies has a surface area of 27,500 square metres (296,000 sq ft) (9,000 square metres (97,000 sq ft) interior and 18,500 square metres (199,000 sq ft) thermal gardens). The interior is covered by a glass dome which can be half-opened in the summer months. The interior is stands out, with a 1,450 square metres (15,600 sq ft) spa pool, pool bar, grotto, waterfall, neck showers, massage jets, Jacuzzi beds and current channels. Quiet rooms, a massage area, health baths, a steam room, bio-sauna, children's area and a restaurant are all located around the pool. The thermal garden is home to an outside pool which joins directly to the large indoor spa pool, with massage beds as well as sulfur mineral springs, a sandy beach, beach bar, beach volleyball pitch, and outdoor slides.", city: munich, category: wellness)
therme_erding_photo = URI.open('https://mediafiles.reiseuhu.de/wp-content/uploads/2019/10/therme-erding.jpg')
therme_erding_photo_two = URI.open('https://mediafiles.reiseuhu.de/wp-content/uploads/2019/10/therme-erding.jpg')
therme_erding_photo_three = URI.open('https://mediafiles.reiseuhu.de/wp-content/uploads/2019/10/therme-erding.jpg')
therme_erding.photos.attach(io: therme_erding_photo, filename: "Therme Erding.png", content_type: "image/png")
therme_erding.photos.attach(io: therme_erding_photo_two, filename: "Therme Erding_two.png", content_type: "image/png")
therme_erding.photos.attach(io: therme_erding_photo_three, filename: "Therme Erding_three.png", content_type: "image/png")

#MathildenHammam
mathilden_hamam = Sight.create(name: "Mathilden Hamam SPA", latitude: 48.13472516343259, longitude: 11.56430932904312, address: "Mathildenstraße 5, 80336 München", short_description: "TA hammam or Turkish bath is a type of steam bath or a place of public bathing associated with the Islamic world.", long_description: "A hammam (Arabic: حمّام, romanized: ḥammām, Turkish: hamam) or Turkish bath is a type of steam bath or a place of public bathing associated with the Islamic world. It is a prominent feature in the culture of the Muslim world and was inherited from the model of the Roman thermae. Muslim bathhouses or hammams were historically found across the Middle East, North Africa, al-Andalus (Islamic Spain and Portugal), Central Asia, the Indian subcontinent, and in Southeastern Europe under Ottoman rule. A variation on the Muslim bathhouse, the Victorian Turkish bath, became popular as a form of therapy, a method of cleansing, and a place for relaxation during the Victorian era, rapidly spreading through the British Empire, the United States of America, and Western Europe.", city: munich, category: wellness)
mathilden_hamam_photo = URI.open('https://mediafiles.urlaubsguru.de/wp-content/uploads/2017/09/Hammam-e-Ali-Gholi-Agha-historische-bath-Esfahan-Iran-iStock-136246319.jpg')
mathilden_hamam_photo_two = URI.open('https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/de/1c/98.jpg')
mathilden_hamam_photo_three = URI.open('https://elhamam.de/uploads/tx_sisislider/_9DK2305-1980.jpg')
mathilden_hamam.photos.attach(io: mathilden_hamam_photo, filename: "mathilden_hamam.png", content_type: "image/png")
mathilden_hamam.photos.attach(io: mathilden_hamam_photo_two, filename: "Tmathilden_hamam_two.png", content_type: "image/png")
mathilden_hamam.photos.attach(io: mathilden_hamam_photo_three, filename: "mathilden_hamam_three.png", content_type: "image/png")

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

puts "seeding new cities and Rio sights"

#new seeds
rio = City.create(name: "Rio de Janeiro")
r = URI.open('https://www.melhoresdestinos.com.br/wp-content/uploads/2019/08/rio-de-janeiro-capa2019-01.jpg')
rio.photo.attach(io: r, filename: "Rio de Janeiro.png", content_type: "image/png")

cape_town = City.create(name: "Cape Town")
ct = URI.open('https://traveler.marriott.com/wp-content/uploads/2021/04/GI_86362200_VictoriaWaterfrontSA_RF.jpg')
cape_town.photo.attach(io: ct, filename: "Cape Town.png", content_type: "image/png")

buenos_aires = City.create(name: "Buenos Aires")
ba = URI.open('https://cdnstatic8.com/coisosonthego.com/wp-content/uploads/2019/01/O-que-fazer-em-Buenos-Aires-Plaza-del-Congreso-e-Congresso-Nacional-da-Argentina-vistos-do-Palacio-Barolo.jpg')
buenos_aires.photo.attach(io: ba, filename: "Buenos Aires.png", content_type: "image/png")

new_york = City.create(name: "New York")
ny = URI.open('https://blog-api.culturalcare.world//app/uploads/sites/15/2019/04/nyc-header.jpg')
new_york.photo.attach(io: ny, filename: "New York.png", content_type: "image/png")

berlin = City.create(name: "Berlin")
brl = URI.open('https://assets-prd.formulae.cloud/-/media/images/championship/race-calendar/berlin/berlin-header.png')
berlin.photo.attach(io: brl, filename: "Berlin.png", content_type: "image/png")

kerala = City.create(name: "Kerala")
krl = URI.open('https://www.onde-e-quando.net/site/images/illustration/kerala_977.jpg')
kerala.photo.attach(io: krl, filename: "Kerala.png", content_type: "image/png")

ubud = City.create(name: "Ubud")
ubu = URI.open('https://www.vounajanela.com/wp-content/uploads/2019/05/onde-ficar-em-ubud-3.jpg')
ubud.photo.attach(io: ubu, filename: "Ubud.png", content_type: "image/png")

singapore = City.create(name: "Singapore")
sing = URI.open('https://a.cdn-hotels.com/gdcs/production93/d422/118f3050-41af-4c7b-9651-3428a0e894d9.jpg')
singapore.photo.attach(io: sing, filename: "Singapore.png", content_type: "image/png")




#Rio sights
sugarloaf = Sight.create(name: "Pão de Açúcar", latitude: -22.94874426684942, longitude: -43.154489914165154, address: "Morro da Urca, 22290-240 Rio de Janeiro", short_description: "An iconic sight in Rio de Janeiro.", long_description: "See Rio at its best. The Sugarloag Mountain is one the most beautiful attractions in Rio de Janeiro and one of the most famous in Brazil. An amazing touristic landmark, it offers a fun cabe car ride and gorgeous views.", city: rio, category: sights_landmarks)
sugarloaf_photo = URI.open('https://imgsapp.em.com.br/app/noticia_127983242361/2022/05/31/1370072/bondinho-do-pao-de-acucar_1_208849.jpg')
sugarloaf_photo_two = URI.open('https://a.cdn-hotels.com/gdcs/production186/d1087/84949bcf-a088-4d02-bbcf-8a95d90f3415.jpg')
sugarloaf_photo_three = URI.open('https://www.melhoresdestinos.com.br/wp-content/uploads/2019/02/passagens-aereas-rio-de-janeiro-capa2019-01.jpg')
sugarloaf.photos.attach(io: sugarloaf_photo, filename: "Sugarloaf.png", content_type: "image/png")
sugarloaf.photos.attach(io: sugarloaf_photo_two, filename: "Sugarloaf_two.png", content_type: "image/png")
sugarloaf.photos.attach(io: sugarloaf_photo_three, filename: "Sugarloaf_three.png", content_type: "image/png")

selaron = Sight.create(name: "Escadaria Selarón", latitude: -22.915035349322064, longitude: -43.17917141587194, address: "R. Manuel Carneiro, Lapa 20241-120 Rio de Janeiro", short_description: "We challenge you to find a prettier stairway.", long_description: "Chilean artist Jorge Selaron started this staircase, and international visitors gifted him with tiles from all over the world. Nowadays there are more than 2000 tiles from around 60 countries!", city: rio, category: sights_landmarks)
selaron_photo = URI.open('https://freewalkertours.com/wp-content/uploads/Escalera-Selaron5.jpeg')
selaron_photo_two = URI.open('https://panoramadeviagem.com.br/wp-content/uploads/2019/07/escadaria-selaron.jpg')
selaron_photo_three = URI.open('https://diariodorio.com/wp-content/uploads/2019/10/selaron.jpg')
selaron.photos.attach(io: selaron_photo, filename: "selaron.png", content_type: "image/png")
selaron.photos.attach(io: selaron_photo_two, filename: "selaron_two.png", content_type: "image/png")
selaron.photos.attach(io: selaron_photo_three, filename: "selaron_three.png", content_type: "image/png")

corcovado = Sight.create(name: "Christ the Redeemer", latitude: -22.9515214852938, longitude: -43.21127508347187, address: "Alto da Boa vista, 20241-120 Rio de Janeiro", short_description: "Cristo Redentor guards beautiful Guanabara Bay.", long_description: "Right atop the City, Christ the Redeemer watches over the cariocas. It is the biggest and most famous Art Deco sculpture in the world, and offers sprawling views of this gorgeous city.", city: rio, category: sights_landmarks)
corcovado_photo = URI.open('https://formaconhecer.com.br/wp-content/uploads/2019/05/saida-pedagogica-rio-de-janeiro-corcovado-cristo-redentor-01.png')
corcovado_photo_two = URI.open('https://cdn.lugares.eco.br/upload/dn_arquivo/2021/11/reveilon-corcovado.jpg')
corcovado_photo_three = URI.open('https://cdn.diariodoturismo.com.br/wp-content/uploads/2021/08/WhatsApp-Image-2021-08-25-at-07.41.36.jpeg')
corcovado.photos.attach(io: corcovado_photo, filename: "corcovado.png", content_type: "image/png")
corcovado.photos.attach(io: corcovado_photo_two, filename: "corcovado_two.png", content_type: "image/png")
corcovado.photos.attach(io: corcovado_photo_three, filename: "corcovado_three.png", content_type: "image/png")

santa = Sight.create(name: "Santa Teresa", latitude: -22.92463339715706, longitude: -43.19290384707953, address: "Santa Teresa, 20201-100 Rio de Janeiro", short_description: "The Montmartre of Rio de Janeiro.", long_description: "A charming bohemian neighborhood with so much to see and do. Artists, musicians and general partygoers make the hilly streets come alive 7 days a week, 24/7.", city: rio, category: nightlife)
santa_photo = URI.open('https://static.wixstatic.com/media/29806e_375c4fd904994b30a3ae0a86f7760264~mv2.jpg/v1/fill/w_1000,h_667,al_c,q_90,usm_0.66_1.00_0.01/29806e_375c4fd904994b30a3ae0a86f7760264~mv2.jpg')
santa_photo_two = URI.open('https://a.travel-assets.com/findyours-php/viewfinder/images/res70/191000/191427-Santa-Teresa.jpg')
santa_photo_three = URI.open('https://a.cdn-hotels.com/gdcs/production39/d1024/0f2f7512-33a5-4be0-bcf1-80ce0cdbb244.jpg')
santa.photos.attach(io: santa_photo, filename: "santa.png", content_type: "image/png")
santa.photos.attach(io: santa_photo_two, filename: "santa_two.png", content_type: "image/png")
santa.photos.attach(io: santa_photo_three, filename: "santa_three.png", content_type: "image/png")

ipanema = Sight.create(name: "Ipanema Beach", latitude: -22.98662045970758, longitude: -43.204665289343595, address: "Ipanema, 22420-004 Rio de Janeiro", short_description: "The jewel of Rio de Janeiro.", long_description: "Play altinho at the beach, drink mate, lounge at Posto 8 and get a sense of life in Rio at its best, with Ipanema's cross-section of different lifestyles, chic boutiques and luxurious buildings.", city: rio, category: wellness)
ipanema_photo = URI.open('https://img.freepik.com/premium-photo/aerial-image-ipanema-beach-rio-de-janeiro-4k_63135-630.jpg')
ipanema_photo_two = URI.open('https://www.viajali.com.br/wp-content/uploads/2020/05/praia-de-ipanema-11.jpg')
ipanema_photo_three = URI.open('https://riotur.rio/wp-content/uploads/2015/12/8269992674_547387cc44_o.jpg')
ipanema.photos.attach(io: ipanema_photo, filename: "ipanema.png", content_type: "image/png")
ipanema.photos.attach(io: ipanema_photo_two, filename: "ipanema_two.png", content_type: "image/png")
ipanema.photos.attach(io: ipanema_photo_three, filename: "ipanema_three.png", content_type: "image/png")

maracana = Sight.create(name: "Maracanã Stadium", latitude: -22.911891487807292, longitude: -43.230166528836534, address: "Av. Pres. Castelo Branco 3, 20271-130 Rio de Janeiro", short_description: "Legendary football stadium.", long_description: "Home to iconic sports moments, Maracanã is a true temple of footbal. Watching heated matches here, like the traditional Fla x Flu, is a truly unforgettable experience .", city: rio, category: fun_games)
maracana_photo = URI.open('https://www.guiadasemana.com.br/contentFiles/image/2019/06/VEN/principal/91427_w840h0_1560271049shutterstock-380047378-maracana-by-marchello74.jpg')
maracana_photo_two = URI.open('https://sandertour.com.br/sandertour/img/sander-tour-agencia-de-viagem-rede-social-maracana-rio-de-janeiro-rj-5f46714c8af85_0.jpg')
maracana_photo_three = URI.open('https://cdn.jornaldebrasilia.com.br/wp-content/uploads/2020/02/flatrocida-1000x568.jpg')
maracana.photos.attach(io: maracana_photo, filename: "maracana.png", content_type: "image/png")
maracana.photos.attach(io: maracana_photo_two, filename: "maracana_two.png", content_type: "image/png")
maracana.photos.attach(io: maracana_photo_three, filename: "maracana_three.png", content_type: "image/png")
