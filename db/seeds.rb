# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


films = Film.create([
  {
    imdb_id: "tt0058331",
    title: "Mary Poppins",
    release_date: "11 Sep 1964",
    genre: "Comedy, Family, Fantasy",
    description: "A magic nanny comes to work for a cold banker's unhappy family.",
    imdb_rating: "8.3",
    tomatoes_rating: "8.3",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY1MDQwNTM3Ml5BMl5BanBnXkFtZTgwNzA3ODg3MDE@._V1_SX300.jpg",
    flix_rating: nil,
    ranking: 1
  },
  {
    imdb_id: "tt0059742",
    title: "The Sound of Music",
    release_date: "29 Mar 1965",
    genre: "Biography, Drama, Family",
    description: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.",
    imdb_rating: "8.0",
    tomatoes_rating: "8.0",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMGYyZjk4MDMtYTZmMS00YWM2LTgxNDQtM2EwNzQ2MDZhNWQxXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg",
    flix_rating: nil,
    ranking: 2
  },
  {
    imdb_id: "tt0061852",
    title: "The Jungle Book",
    release_date: "07 Dec 1967",
    genre: "Animation, Adventure, Family",
    description: "Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.",
    imdb_rating: "7.6",
    tomatoes_rating: "7.2",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjAwMTExODExNl5BMl5BanBnXkFtZTgwMjM2MDgyMTE@._V1_SX300.jpg",
    flix_rating: nil,
    ranking: 3
  }
])
