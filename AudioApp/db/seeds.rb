
User.destroy_all

u1 = User.create(name: "Don Zientara", email: "donz@gmail.com", password: "chicken", password_confirmation: "chicken")
u2 = User.create(name: "George Martin", email: "george@gmail.com", password: "chicken", password_confirmation: "chicken")
u3 = User.create(name: "PJ Harvey", email: "pj@gmail.com", password: "chicken", password_confirmation: "chicken")
u4 = User.create(name: "Steve Albini", email: "steve@gmail.com", password: "chicken", password_confirmation: "chicken")

p "Number of users: #{User.all.count}"
p u1.password_digest
p u2.password_digest
p u3.password_digest
p u4.password_digest

Engineer.destroy_all

steve = Engineer.create(name: "Steve Albini", bio: "Owner and engineer at Electrical Audio Chicago", user_id: u4.id)
flood = Engineer.create(name: "Flood", bio: "Co Owner and engineer at Assault & Battery 1, London")
rick = Engineer.create(name: "Rick Rubin", bio: "The only producer you need")

p "Engineer count is #{Engineer.all.count}"

Artist.destroy_all

hashrocket = Artist.create(name: "Hash Rocket", bio: "Founded by Ginger in 2004, their first album Cat equals God was released in 2005 to critical acclaim. One of the few bands to overcome the cat dog barrier that often breaks bands apart, Hash Rocket continue to pioneer species diversity.", image: "http://static.boredpanda.com/blog/wp-content/uploads/2017/02/animals-about-to-drop-album-photos-31-58aee2dd27168__700.jpg")
grooming = Artist.create(name: "Grooming", bio: "Escaping from a farm back in 2004, Grooming released their hit single Meat Bad in 2005. This led to their hit album, Fur Feather Love in 2006.", image: "http://static.boredpanda.com/blog/wp-content/uploads/2017/02/animals-about-to-drop-album-photos-58aeb2b30934d__700.jpg")
rails = Artist.create(name: "Rails", bio: "They met each other through their love affair of acorns. The first album Oh Squirrel, my squirrel, hit #3 on the billboard music chart in 2006. Riding high on this, they released their unfortunately titled follow up, Hiding My Nuts in 2007, which was universally panned.", image: "http://static.boredpanda.com/blog/wp-content/uploads/2017/02/animals-about-to-drop-album-photos-58aeb22cb6327__700.jpg")
shellac = Artist.create(name: "Shellac", bio: "Shellac formed in Chicago, Illinois, in 1992 as an informal collaboration between guitarist Steve Albini and drummer Todd Trainer. Shellac has a distinctive, minimalist sound based on asymmetric time signatures, repetitive rhythms, an angular guitar sound", image: "https://brassneckreviews.files.wordpress.com/2014/01/shellac-1.jpg", user_id: u4.id)

p "Artist count is #{Artist.all.count}"

Booking.destroy_all

b1 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), duration: 1, engineer_id: steve.id, artist_id: hashrocket.id)
b2 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), duration: 1, engineer_id: flood.id, artist_id: grooming.id)
b3 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), duration: 1, engineer_id: steve.id, artist_id: rails.id)

p "Booking count is #{Booking.all.count}"

p "Booking 1 Engineer name: #{b1.engineer.name}"
p "Steve Albini recording sessions: #{steve.bookings.all.count}"

steve.bookings.each do |i|
  p "Steve is recording:#{i.artist.name}"
end
