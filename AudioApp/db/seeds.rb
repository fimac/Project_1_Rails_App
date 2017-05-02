
User.destroy_all

u1 = User.create(name: "Don Zientara", email: "donz@gmail.com", password: "chicken", password_confirmation: "chicken")
u2 = User.create(name: "George Martin", email: "george@gmail.com", password: "chicken", password_confirmation: "chicken")
u3 = User.create(name: "PJ Harvey", email: "pj@gmail.com", password: "chicken", password_confirmation: "chicken")
u4 = User.create(name: "Steve Albini", email: "steve@gmail.com", password: "chicken", password_confirmation: "chicken")
u5 = User.create(name: "Fiona", email: "fiona@gmail.com", password: "chicken", password_confirmation: "chicken")
u6 = User.create(name: "Marty", email: "marty@gmail.com", password: "chicken", password_confirmation: "chicken")

# p "Number of users: #{User.all.count}"

# test cases marty - audio engineer
# fiona - creates a band called test band





Engineer.destroy_all

steve = Engineer.create(name: "Steve Albini", bio: "Owner and engineer at Electrical Audio Chicago", user_id: u4.id)
flood = Engineer.create(name: "Flood", bio: "Co Owner and engineer at Assault & Battery 1, London")
rick = Engineer.create(name: "Rick Rubin", bio: "The only producer you need")
marty = Engineer.create(name: "Marty", bio: "Newby", user_id: u6.id)

# p "Engineer count is #{Engineer.all.count}"

Artist.destroy_all

hashrocket = Artist.create(name: "Hash Rocket", bio: "Founded by Ginger in 2004, their first album Cat equals God was released in 2005 to critical acclaim. One of the few bands to overcome the cat dog barrier that often breaks bands apart, Hash Rocket continue to pioneer species diversity.", image: "http://static.boredpanda.com/blog/wp-content/uploads/2017/02/animals-about-to-drop-album-photos-31-58aee2dd27168__700.jpg", user_id: u5.id)
grooming = Artist.create(name: "Grooming", bio: "Escaping from a farm back in 2004, Grooming released their hit single Meat Bad in 2005. This led to their hit album, Fur Feather Love in 2006.", image: "http://static.boredpanda.com/blog/wp-content/uploads/2017/02/animals-about-to-drop-album-photos-58aeb2b30934d__700.jpg", user_id: u5.id)
rails = Artist.create(name: "Rails", bio: "They met each other through their love affair of acorns. The first album Oh Squirrel, my squirrel, hit #3 on the billboard music chart in 2006. Riding high on this, they released their unfortunately titled follow up, Hiding My Nuts in 2007, which was universally panned.", image: "http://static.boredpanda.com/blog/wp-content/uploads/2017/02/animals-about-to-drop-album-photos-58aeb22cb6327__700.jpg", user_id: u5.id)
shellac = Artist.create(name: "Shellac", bio: "Shellac formed in Chicago, Illinois, in 1992 as an informal collaboration between guitarist Steve Albini and drummer Todd Trainer. Shellac has a distinctive, minimalist sound based on asymmetric time signatures, repetitive rhythms, an angular guitar sound", image: "https://brassneckreviews.files.wordpress.com/2014/01/shellac-1.jpg", user_id: u4.id)
bigblack = Artist.create(name: "Big Black", bio: "Big Black was an American punk rock band from Evanston, Illinois, active from 1981 to 1987. Founded by singer and guitarist Steve Albini.", image: "https://upload.wikimedia.org/wikipedia/en/8/85/Big_Black.jpg", user_id: u4.id)
testband = Artist.create(name: "Test band", bio: "test band bio", user_id: u5.id)

# p "Artist count is #{Artist.all.count}"

Booking.destroy_all

b1 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), duration: 1, engineer_id: steve.id, artist_id: hashrocket.id, user_id: u5.id)
b2 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), duration: 1, engineer_id: flood.id, artist_id: grooming.id, user_id: u5.id)
b3 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), duration: 1, engineer_id: steve.id, artist_id: rails.id, user_id: u5.id)
b4 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), engineer_id: marty.id, artist_id: testband.id, user_id: u5.id)
b5 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), engineer_id: rick.id, artist_id: shellac.id, user_id: u4.id)
b5 = Booking.create(appointment_time: DateTime.parse("03/05/2017 13:00"), engineer_id: rick.id, artist_id: shellac.id, user_id: u4.id)


# Test association between bookings and engineers and artists
p "Booking count is #{Booking.all.count}"
#
# p "Booking 1 Engineer name: #{b1.engineer.name}"
p "Steve Albini recording sessions: #{steve.bookings.all.count}"
#
# steve.bookings.each do |i|
#   p "Steve is recording:#{i.artist.name}"
# end

# I want to test the association between a user and their engineer profile
# I want to test the association between a user and their artist profile
# Currently Steve Albini has an engineer profile as well as an artist profile as Shellac

# For an artist, print out the user

# p "The band shellac is created by #{shellac.user.name}"
#For a user, print out the artists under that user id
 # u4.artists.each do |i|
 #   p "Steve is in #{i.name}"
 # end

 #For a user, print out the engineer listings under that user id



 u4.engineers.each do |i|
   p "Steve's engineer listing #{i.name}"
 end

 # In the same way an engineer has many artists through bookings
  # A user would have many bookings through their engineer profile
# Test assoication, I want u4 to be able to see what bookings they have
# through their engineer profile

# u4.engineers.bookings.each do |i|
#   p "#{i.name}"
# end

p "#{marty.bookings.count}"

marty.bookings.each do |i|
   p "#{i.artist.name}"
end


# In the user view, I want to view if the user has an engineer profile (done)
# I then want to see what bookings they have as an engineer
# The booking that is listed under their engineer name, is booked by a different user
# The booking has the engineer id listed
#
