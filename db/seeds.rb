# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Track.destroy_all
Tracklist.destroy_all
User.destroy_all
UserTracklist.destroy_all
TracklistTrack.destroy_all

track1 = Track.create(name:"T1" , image:"wwww.sth" , artist:"Ahead" , preview:"goot stuff" , spotify_id: 1 )
track2 = Track.create(name: "T2" , image:"www.sss" , artist:"Raz" , preview:"too hharsh" , spotify_id: 2)
track3 = Track.create(name: "T3" , image:"www.drgs" , artist:"goo" , preview:"rsh" , spotify_id: 3)

user1 = User.create(username: "Helen")
user2 = User.create(username: "Kiara")
user3 = User.create(username: "BB")

tracklist1 = Tracklist.create(name:"all" , image:"www")
tracklist2 = Tracklist.create(name:"some" , image:"yyy")
tracklist3 = Tracklist.create(name:"again" , image:"x")

ut1 = UserTracklist.create(user_id: 1, tracklist_id: 1)
ut2 = UserTracklist.create(user_id: 2, tracklist_id: 2)
ut3 = UserTracklist.create(user_id: 1, tracklist_id: 2)

tt1 = TracklistTrack.create(tracklist_id: 1, track_id: 1)
tt2 = TracklistTrack.create(tracklist_id: 2, track_id: 2)
tt1 = TracklistTrack.create(tracklist_id: 3, track_id: 1)
t1 = TracklistTrack.create(tracklist_id: 2, track_id: 1)