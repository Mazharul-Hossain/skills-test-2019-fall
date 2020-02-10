# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

album_1 = Album.create!(
    artist: 'Back in Black',
    title: 'AC/DC',
    year: 1980
)

album_2 = Album.create!(
    artist: 'Hysteria',
    title: 'Def Leppard',
    year: 1987
)

album_3 = Album.create!(
    artist: '1984',
    title: 'Van Halen',
    year: 1984
)