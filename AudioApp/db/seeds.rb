Engineer.destroy_all

steve = Engineer.create(name: "Steve Albini", bio: "Owner and engineer at Electrical Audio Chicago")
flood = Engineer.create(name: "Flood", bio: "Co Owner and engineer at Assault & Battery 1, London")
rick = Engineer.create(name: "Rick Rubin", bio: "The only producer you need")

p "Engineer count is #{Engineer.all.count}"
