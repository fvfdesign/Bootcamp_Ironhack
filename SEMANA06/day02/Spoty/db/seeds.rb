user1 =User.create(username: 'Carlos', password: '123456')

song1 = Song.create(title: 'Storm', duration: 60*5+24)

artist1 = Artist.create(name: "Vanessa Mae", genre:"clasica", country:"USA" )

album1=Album.create(name: "sommer")

# ab1.songs << s1
song1.artist = artist1
song1.album = album1
song1.save

album1.artist = artist1
album1.save



# puts User.first.inspect
# puts Song.first.inspect
puts Artist.first.albums
puts Album.first.artist



#rails generate model Playlist name:string user:references song:references


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#rails generate model Song title:string duration:integer

#rails g migration AddAlbumToSongs (crea una nueva columna)