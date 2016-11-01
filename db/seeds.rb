# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
# Film.delete_all


users = User.create([
  {
    username: "saurus",
    email_address: "bex@flixapp.com",
    password: "123"
  },
  {
    username: "squigg",
    email_address: "steve@example.com",
    password: "456"
  },
  {
    username: "hayli",
    email_address: "hayleigh@example.com",
    password: "789"
  },
  {
    username: "nanadot",
    email_address: "dorothy@example.com",
    password: "101"
  },
  {
    username: "nightfly",
    email_address: "jamie@example.com",
    password: "121"
  },
  {
    username: "ruscky",
    email_address: "maxim@example.com",
    password: "145"
  },
  {
    username: "pastafish",
    email_address: "neil@example.com",
    password: "617"
  },
  {
    username: "bunceR",
    email_address: "richard@example.com",
    password: "189"
  },
  {
    username: "wiseowl",
    email_address: "lee@example.com",
    password: "202"
  },
  {
    username: "h41ley",
    email_address: "hailey@example.com",
    password: "223"
  }
])

# films = Film.create([
#   {
#     imdb_id: "tt0058331",
#     title: "Mary Poppins",
#     release_date: "11 Sep 1964",
#     decade: 60,
#     director: "Robert Stevenson",
#     genre: "Comedy, Family, Fantasy",
#     description: "A magic nanny comes to work for a cold banker's unhappy family.",
#     imdb_rating: "8.3",
#     tomatoes_rating: "8.3",
#     poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY1MDQwNTM3Ml5BMl5BanBnXkFtZTgwNzA3ODg3MDE@._V1_SX300.jpg",
#     flix_rating: "9.9",
#     ranking: 1
#   },
#   {
#     imdb_id: "tt0059742",
#     title: "The Sound of Music",
#     release_date: "29 Mar 1965",
#     decade: 60,
#     director: "Robert Wise",
#     genre: "Biography, Drama, Family",
#     description: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.",
#     imdb_rating: "8.0",
#     tomatoes_rating: "8.0",
#     poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMGYyZjk4MDMtYTZmMS00YWM2LTgxNDQtM2EwNzQ2MDZhNWQxXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg",
#     flix_rating: "9.0",
#     ranking: 2
#   },
#   {
#     imdb_id: "tt0061852",
#     title: "The Jungle Book",
#     release_date: "07 Dec 1967",
#     decade: 60,
#     director: "Wolfgang Reitherman",
#     genre: "Animation, Adventure, Family",
#     description: "Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.",
#     imdb_rating: "7.6",
#     tomatoes_rating: "7.2",
#     poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjAwMTExODExNl5BMl5BanBnXkFtZTgwMjM2MDgyMTE@._V1_SX300.jpg",
#     flix_rating: "8.8",
#     ranking: 3
#   },
#   {
#     imdb_id: "tt0078748",
#     title: "Alien",
#     release_date: "22 Jun 1979",
#     decade: 70,
#     director: "Ridley Scott",
#     genre: "Horror, Sci-Fi",
#     description: "After a space merchant vessel perceives an unknown transmission as distress call, their landing on the source moon finds one of the crew attacked by a mysterious lifeform. Continuing their journey back to Earth with the attacked crew having recovered and the critter deceased, they soon realize that its life cycle has merely begun.",
#     imdb_rating: "8.5",
#     tomatoes_rating: "9.0",
#     poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BNDNhN2IxZWItNGEwYS00ZDNhLThiM2UtODU3NWJlZjBkYjQxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
#     flix_rating: "9.5",
#     ranking: 1
#   },
#   {
#     imdb_id: "tt0075860",
#     title: "Close Encounters of the Third Kind",
#     release_date: "14 Dec 1977",
#     decade: 70,
#     director: "Steven Spielberg",
#     genre: "Drama, Sci-Fi",
#     description: "After an encounter with U.F.O.s, a line worker feels undeniably drawn to an isolated area in the wilderness where something spectacular is about to happen.",
#     imdb_rating: "7.7",
#     tomatoes_rating: "8.9",
#     poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjM1NjE5NjQxN15BMl5BanBnXkFtZTgwMjYzMzQxMDE@._V1_SX300.jpg",
#     flix_rating: "8.5",
#     ranking: 2
#   },
#   {
#     imdb_id: "tt0073195",
#     title: "Jaws",
#     release_date: "20 Jun 1975",
#     decade: 70,
#     director: "Steven Spielberg",
#     genre: "Adventure, Drama, Thriller",
#     description: "When a gigantic great white shark begins to menace the small island community of Amity, a police chief, a marine scientist and a grizzled fisherman set out to stop it.",
#     imdb_rating: "8.0",
#     tomatoes_rating: "9.2",
#     poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BNDcxODkyMjY4MF5BMl5BanBnXkFtZTgwOTk5NTc5MDE@._V1_SX300.jpg",
#     flix_rating: "8.0",
#     ranking: 3
#   },
# ])
