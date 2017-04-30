Engineer.destroy_all

steve = Engineer.create(name: "Steve Albini", bio: "Owner and engineer at Electrical Audio Chicago")
flood = Engineer.create(name: "Flood", bio: "Co Owner and engineer at Assault & Battery 1, London")
rick = Engineer.create(name: "Rick Rubin", bio: "The only producer you need")

p "Engineer count is #{Engineer.all.count}"

Artist.destroy_all

hashrocket = Artist.create(name: "Hash Rocket", bio: "Founded by Ginger in 2004, their first album Cat equals God was released in 2005 to critical acclaim. One of the few bands to overcome the cat dog barrier that often breaks bands apart, Hash Rocket continue to pioneer species diversity.", image: "http://static.boredpanda.com/blog/wp-content/uploads/2017/02/animals-about-to-drop-album-photos-31-58aee2dd27168__700.jpg")
grooming = Artist.create(name: "Grooming", bio: "Escaping from a farm back in 2004, Grooming released their hit single Meat Bad in 2005. This led to their hit album, Fur Feather Love in 2006.", image: "http://static.boredpanda.com/blog/wp-content/uploads/2017/02/animals-about-to-drop-album-photos-58aeb2b30934d__700.jpg")
rails = Artist.create(name: "Rails", bio: "They met each other through their love affair of acorns. The first album Oh Squirrel, my squirrel, hit #3 on the billboard music chart in 2006. Riding high on this, they released their unfortunately titled follow up, Hiding My Nuts in 2007, which was universally panned.", image: "http://static.boredpanda.com/blog/wp-content/uploads/2017/02/animals-about-to-drop-album-photos-58aeb22cb6327__700.jpg")

p "Artist count is #{Artist.all.count}"

Booking.destroy_all

b1 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), duration: 1, engineer_id: steve.id, artist_id: hashrocket.id)
b2 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), duration: 1, engineer_id: flood.id, artist_id: grooming.id)
b3 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), duration: 1, engineer_id: steve.id, artist_id: rails.id)

p "Booking count is #{Booking.all.count}"
