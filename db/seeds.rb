# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Plant.destroy_all
User.destroy_all

user = User.new(email: "re@test.co.uk", password: "123456")
user.save!
# need to add an address to all of these once columns added to plant model
plant = Plant.new(name: "Calathea", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1557255932-the-sill-potted-plant-calathea-medallion-prospect-black-7-1500x-progressive-1557255913.jpg?crop=1.00xw:0.774xh;0,0.174xh&resize=768:*", description: "Prayer plants produce foliage pretty enough to outshine a bouquet, and you don't need a botany degree to maintain one. For the best display, keep the plant moist (not drenched) and avoid bright light.", user: user, address: '46 Grosvenor Court, Adenmore Road, London, SE6 4FD')
plant.save!
plant = Plant.new(name: "Ponytail Palm", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1557256823-beaucarnea-recurvata-ponytail-palm-1557256813.jpg?crop=0.889xw:1.00xh;0.0721xw,0&resize=768:*", description: "Officially called the Beaucarnea recurvata, the slow-growing ponytail palm likes basking in a sunny window. Don't douse the Mexico native with too much water.", user: user)
plant.save!
plant = Plant.new(name: "ZZ Plant", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1557179245-the-sill-houseplant-zz-plant-1-6-014-2230x-progressive-1557179231.jpg?crop=1.00xw:0.774xh;0,0.143xh&resize=768:*", description: "Officially named Zamioculcas zamiifolia, the ZZ plant is native to East Africa. Called the king of the indestructible plants, the species tolerates the dangerous trifecta of plant-killers: drought, low light, and really low humidity.", user: user)
plant.save!
plant = Plant.new(name: "Aloe", image: "https://images.unsplash.com/photo-1509423350716-97f9360b4e09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80", description: "Aloe vera is a succulent plant species of the genus Aloe. The plant is stemless or very short-stemmed with thick, greenish, fleshy leaves that fan out.", user: user)
plant.save!
plant = Plant.new(name: "Bonsai", image: "https://images.unsplash.com/photo-1467043198406-dc953a3defa0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=670&q=80", description: "A Bonsai tree is a replication of nature, in the form of a miniature tree, without displaying the human intervention too clearly. The connotations or added/implied Bonsai tree meanings include: A general tree-like shape or style.", user: user)
plant.save!
plant = Plant.new(name: "Pothos", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1603654968-il_570xN.2485154742_kpa5.jpg?crop=0.856xw:0.955xh;0.0263xw,0.0274xh&resize=768:*", description: "This trailing vine has earned the nickname devil's ivy for its ability to withstand nearly pitch-black conditions as well as under- and over-watering.", user: user)
plant.save!
plant = Plant.new(name: "Poinsettia", image: "https://images.unsplash.com/photo-1606064835109-5633e21382c4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80", description: "Poinsettias are cheery plants that are widely grown indoors over Christmas for their brightly coloured bracts.", user: user)
plant.save!
plant = Plant.new(name: "Aparagus Fern", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1554477330-beautiful-asparagus-fern-plant-in-a-basket-royalty-free-image-972247932-1546889240.jpg?crop=0.547xw:0.361xh;0.393xw,0.317xh&resize=768:*", description: "This fluffy plant tolerates a lot more abuse than other ferns — thanks to the fact that it's technically not a fern. Asparagus setaceus adapts to both bright spots and darker corners.", user: user)
plant.save!
plant = Plant.new(name: "Jade Plant", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1603654852-jade-plant-1589561938.jpg?crop=0.6677678150070788xw:1xh;center,top&resize=768:*", description: "Jade retains water in its round leaves, so it can sometimes survive more than a month without any attention whatsoever.", user: user)
plant.save!
plant = Plant.new(name: "Venus Flytrap", image: "https://images.unsplash.com/photo-1538358519265-586278a34106?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1055&q=80", description: "The Venus flytrap (Dionaea muscipula) is a carnivorous plant native to subtropical wetlands on the East Coast of the United States in North Carolina", user: user)
plant.save!
plant = Plant.new(name: "Chinese Money Plant", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1603654819-il_794xN.2440665192_1z8d.jpg?crop=1xw:1.00xh;center,top&resize=768:*", description: "Pilea peperomioides grows best in a shady spot (or winter windowsill) with weekly watering. You can replant the offshoots that sprout from the base of the stem and give them as gifts.", user: user)
plant.save!
plant = Plant.new(name: "Yucca", image: "https://images.unsplash.com/photo-1509423350716-97f9360b4e09?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80", description: "The recipe for a happy yucca is easy: sun, sun, and more sun. Plant in a container deep enough to balance the top-heavy woody stems and water sparingly.", user: user)
plant.save!
plant = Plant.new(name: "English Ivy", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1557254911-ivy-royalty-free-image-845006600-1557254802.jpg?crop=0.524xw:0.786xh;0.114xw,0.108xh&resize=768:*", description: "You could let the long tendrils hang from mantel or shelf, but the climbing plant is also game for topiaries (or stadium walls, like at Wrigley Field). Chicago Botanic Garden recommends Cascade, Domino, and Irish Lace as some of the best potted varieties.", user: user)
plant.save!
plant = Plant.new(name: "Dragon Tree", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1557255687-flowers-in-a-pot-indoors-royalty-free-image-940610580-1557255594.jpg?crop=0.649xw:0.974xh;0,0&resize=768:*", description: "Save some room on your windowsill and tuck this low-light variety in an unloved corner. Pet owners, watch out: Dracaena marginata is toxic to both dogs and cats, so keep animals far away.", user: user)
plant.save!

plant = Plant.new(name: "Snake Plant", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1603654368-51rKhNCtXSL.jpg?crop=1xw:1.00xh;center,top&resize=768:*", description: "One of many sansevierias, snake plant is tough to kill. Those can go for a month without water, say experts. The leaves are typically stiff, sharp, and spikey.", user: user)
plant.save!
plant = Plant.new(name: "Schefflera", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1603654500-bf16406f-8cbf-40f8-be82-7b212c0945ad.a94deb245dcfae1355350a737e9fa3c4.jpg?crop=0.824xw:0.824xh;0.0913xw,0.0913xh&resize=768:*", description: "This evergreen shrub, also known as an umbrella tree, can grow 15 feet outside, but under the watch of a forgetful gardener it will grow more slowly indoors. Like many plants, it can be mildly toxic.", user: user)
plant.save!
plant = Plant.new(name: "Dieffenbachia", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1603654572-417RoQcFBmL.jpg?crop=0.842xw:1.00xh;0.0480xw,0&resize=768:*", description: "Place this beauty by a curtained window, protecting new leaves from extra sun. With filtered light, the showy plant is one happy camper.", user: user)
plant.save!
plant = Plant.new(name: "Crown of Thorns", image: "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1554479392-1428948147-54ff5f8818e5a-ghk-plants-you-cannot-kill-crown-of-thorns-s2-1554479385.jpg?crop=1.00xw:0.668xh;0,0.183xh&resize=768:*", description: "Yes, this plant can produce prickers, but it's not exactly picky. The succulent shrub can go without water for a week or more and it still produces lovely blooms all year round", user: user)
plant.save!
