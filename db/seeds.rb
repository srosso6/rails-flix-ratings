# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.delete_all
Film.delete_all
Vote.delete_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

users = User.create([
  {
    username: "guest",
    email_address: "guest@example.com",
    password: "guest1",
    password_confirmation: "guest1"
  },
  {
    username: "saurus",
    email_address: "bex@example.com",
    password: "123123a?",
    password_confirmation: "123123a?"
  },
  {
    username: "squigg",
    email_address: "steve@example.com",
    password: "456456b!",
    password_confirmation: "456456b!"
  },
  {
    username: "hayli",
    email_address: "hayleigh@example.com",
    password: "?789a789",
    password_confirmation: "?789a789"
  },
  {
    username: "nanadot",
    email_address: "dorothy@example.com",
    password: "!101b101",
    password_confirmation: "!101b101"
  },
  {
    username: "nightfly",
    email_address: "jamie@example.com",
    password: "112c!112",
    password_confirmation: "112c!112"
  },
  {
    username: "ruscky",
    email_address: "maxim@example.com",
    password: "131n_131",
    password_confirmation: "131n_131"
  },
  {
    username: "pastafish",
    email_address: "neil@example.com",
    password: "aghty165!",
    password_confirmation: "aghty165!"
  },
  {
    username: "bunceR",
    email_address: "richard@example.com",
    password: "bight_23",
    password_confirmation: "bight_23"
  },
  {
    username: "wiseowl",
    email_address: "lee@example.com",
    password: "181erre)!",
    password_confirmation: "181erre)!"
  },
  {
    username: "h41ley",
    email_address: "hailey@example.com",
    password: "192v!192",
    password_confirmation: "192v!192"
  }
])

films = Film.create([
  {
    imdb_id: "tt1229822",
    title: "Jane Eyre",
    release_date: "22 Apr 2011",
    decade: "10s",
    director: "Cary Joji Fukunaga",
    genre: "Drama, Romance",
    description: "A mousy governess who softens the heart of her employer soon discovers that he's hiding a terrible secret.",
    imdb_rating: "7.4",
    tomatoes_rating: "7.3",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BNjU0Mjc0NzU3NF5BMl5BanBnXkFtZTcwMTU4OTkwNA@@._V1_SX300.jpg",
    flix_rating: 10,
    ranking: 1,
    combined_rating: 5.78
  },
  {
    imdb_id: "tt1486834",
    title: "What If",
    release_date: "15 Aug 2014",
    decade: "10s",
    director: "Michael Dowse",
    genre: "Comedy, Romance",
    description: "Wallace, who is burned out from a string of failed relationships, forms an instant bond with Chantry, who lives with her longtime boyfriend. Together, they puzzle out what it means if your best friend is also the love of your life.",
    imdb_rating: "6.8",
    tomatoes_rating: "6.3",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTcyODc4Njg4OF5BMl5BanBnXkFtZTgwNDIwNDA4MTE@._V1_SX300.jpg",
    flix_rating: 6,
    ranking: 3,
    combined_rating: 4.18
  },
  {
    imdb_id: "tt1375666",
    title: "Inception",
    release_date: "16 Jul 2010",
    decade: "10s",
    director: "Christopher Nolan",
    genre: "Action, Adventure, Sci-Fi",
    description: "A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.",
    imdb_rating: "8.8",
    tomatoes_rating: "8.1",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_SX300.jpg",
    flix_rating: 6,
    ranking: 2,
    combined_rating: 4.82
  },
  {
    imdb_id: "tt0314331",
    title: "Love Actually",
    release_date: "11 Nov 2003",
    decade: "00s",
    director: "Richard Curtis",
    genre: "Comedy, Drama, Romance",
    description: "Follows the lives of eight very different couples in dealing with their love lives in various loosely interrelated tales all set during a frantic month before Christmas in London, England.",
    imdb_rating: "7.7",
    tomatoes_rating: "6.3",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY4NjQ5NDc0Nl5BMl5BanBnXkFtZTYwNjk5NDM3._V1_SX300.jpg",
    flix_rating: 6,
    ranking: 2,
    combined_rating: 4.33
  },
  {
    imdb_id: "tt0332280",
    title: "The Notebook",
    release_date: "06 Jun 2004",
    decade: "00s",
    director: "Nick Cassavetes",
    genre: "Drama, Romance",
    description: "A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated because of their social differences.",
    imdb_rating: "7.9",
    tomatoes_rating: "0",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTk3OTM5Njg5M15BMl5BanBnXkFtZTYwMzA0ODI3._V1_SX300.jpg",
    flix_rating: 10,
    ranking: 1,
    combined_rating: 4.65
  },
  {
    imdb_id: "tt0338013",
    title: "Eternal Sunshine of the Spotless Mind",
    release_date: "19 Mar 2004",
    decade: "00s",
    director: "Michel Gondry",
    genre: "Drama, Fantasy, Romance",
    description: "When their relationship turns sour, a couple undergoes a procedure to have each other erased from their memories. But it is only through the process of loss that they discover what they had to begin with.",
    imdb_rating: "8.3",
    tomatoes_rating: "8.4",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY4NzcwODg3Nl5BMl5BanBnXkFtZTcwNTEwOTMyMw@@._V1_SX300.jpg",
    flix_rating: 2,
    ranking: 3,
    combined_rating: 3.45
  },
  {
    imdb_id: "tt0116629",
    title: "Independence Day",
    release_date: "03 Jul 1996",
    decade: "90s",
    director: "Roland Emmerich",
    genre: "Action, Adventure, Sci-Fi",
    description: "The aliens are coming and their goal is to invade and destroy Earth. Fighting superior technology, mankind's best weapon is the will to survive.",
    imdb_rating: "6.9",
    tomatoes_rating: "6.4",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMGQwNDNkMmItYWY1Yy00YTZmLWE5OTAtODU0MGZmMzQ1NDdkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
    flix_rating: 2,
    ranking: nil,
    combined_rating: 2.88
  },
  {
    imdb_id: "tt0110357",
    title: "The Lion King",
    release_date: "24 Jun 1994",
    decade: "90s",
    director: "Roger Allers, Rob Minkoff",
    genre: "Animation, Adventure, Drama",
    description: "Lion cub and future king Simba searches for his identity. His eagerness to please others and penchant for testing his boundaries sometimes gets him into trouble.",
    imdb_rating: "8.5",
    tomatoes_rating: "8.3",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_SX300.jpg",
    flix_rating: 6,
    ranking: 2,
    combined_rating: 4.8
  },
  {
    imdb_id: "tt0109830",
    title: "Forrest Gump",
    release_date: "06 Jul 1994",
    decade: "90s",
    director: "Robert Zemeckis",
    genre: "Comedy, Drama",
    description: "Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.",
    imdb_rating: "8.8",
    tomatoes_rating: "7.2",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BYThjM2MwZGMtMzg3Ny00NGRkLWE4M2EtYTBiNWMzOTY0YTI4XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg",
    flix_rating: 10,
    ranking: 1,
    combined_rating: 6
  },
  {
    imdb_id: "tt0107290",
    title: "Jurassic Park",
    release_date: "11 Jun 1993",
    decade: "90s",
    director: "Steven Spielberg",
    genre: "Adventure, Sci-Fi, Thriller",
    description: "During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.",
    imdb_rating: "8.1",
    tomatoes_rating: "8.3",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_SX300.jpg",
    flix_rating: 6,
    ranking: 3,
    combined_rating: 4.73
  },
  {
    imdb_id: "tt0093779",
    title: "The Princess Bride",
    release_date: "09 Oct 1987",
    decade: "80s",
    director: "Rob Reiner",
    genre: "Adventure, Family, Fantasy",
    description: "While home sick in bed, a young boy's grandfather reads him a story called The Princess Bride.",
    imdb_rating: "8.1",
    tomatoes_rating: "8.3",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMGM4M2Q5N2MtNThkZS00NTc1LTk1NTItNWEyZjJjNDRmNDk5XkEyXkFqcGdeQXVyMjA0MDQ0Mjc@._V1_SX300.jpg",
    flix_rating: 6,
    ranking: 2,
    combined_rating: 4.73
  },
  {
    imdb_id: "tt0094721",
    title: "Beetlejuice",
    release_date: "30 Mar 1988",
    decade: "80s",
    director: "Tim Burton",
    genre: "Comedy, Fantasy",
    description: "A couple of recently deceased ghosts contract the services of a 'bio-exorcist' in order to remove the obnoxious new owners of their house.",
    imdb_rating: "7.5",
    tomatoes_rating: "7",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTUwODE3MDE0MV5BMl5BanBnXkFtZTgwNTk1MjI4MzE@._V1_SX300.jpg",
    flix_rating: 2,
    ranking: 3,
    combined_rating: 3.08
  },
  {
    imdb_id: "tt0088763",
    title: "Back to the Future",
    release_date: "03 Jul 1985",
    decade: "80s",
    director: "Robert Zemeckis",
    genre: "Adventure, Comedy, Sci-Fi",
    description: "Marty McFly, a 17-year-old high school student, is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his close friend, the maverick scientist Doc Brown.",
    imdb_rating: "8.5",
    tomatoes_rating: "8.7",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
    flix_rating: 10,
    ranking: 1,
    combined_rating: 6.2
  },
  {
    imdb_id: "tt0071853",
    title: "Monty Python and the Holy Grail",
    release_date: "25 May 1975",
    decade: "70s",
    director: "Terry Gilliam, Terry Jones",
    genre: "Adventure, Comedy, Fantasy",
    description: "King Arthur and his knights embark on a low-budget search for the Grail, encountering many, very silly obstacles.",
    imdb_rating: "8.3",
    tomatoes_rating: "8.5",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BYzgyYzc4Y2QtNDcyZS00NDdmLWI5ZTYtMTQ2YWU5MWFhOTE4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg",
    flix_rating: 2,
    ranking: 3,
    combined_rating: 3.47
  },
  {
    imdb_id: "tt0066344",
    title: "Scrooge",
    release_date: "19 Dec 1970",
    decade: "70s",
    director: "Ronald Neame",
    genre: "Drama, Family, Fantasy",
    description: "A musical retelling of Charles Dickens' classic novel about an old bitter miser taken on a journey of self-redemption, courtesy of several mysterious Christmas apparitions.",
    imdb_rating: "7.5",
    tomatoes_rating: "7.1",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTk3NTMyNTU3MV5BMl5BanBnXkFtZTcwODU3MDcyMQ@@._V1_SX300.jpg",
    flix_rating: 10,
    ranking: 1,
    combined_rating: 5.77
  },
  {
    imdb_id: "tt0075860",
    title: "Close Encounters of the Third Kind",
    release_date: "14 Dec 1977",
    decade: "70s",
    director: "Steven Spielberg",
    genre: "Drama, Sci-Fi",
    description: "After an encounter with U.F.O.s, a line worker feels undeniably drawn to an isolated area in the wilderness where something spectacular is about to happen.",
    imdb_rating: "7.7",
    tomatoes_rating: "8.9",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjM1NjE5NjQxN15BMl5BanBnXkFtZTgwMjYzMzQxMDE@._V1_SX300.jpg",
    flix_rating: 6,
    ranking: 2,
    combined_rating: 4.77
  },
  {
    imdb_id: "tt0061852",
    title: "The Jungle Book",
    release_date: "07 Dec 1967",
    decade: "60s",
    director: "Wolfgang Reitherman",
    genre: "Animation, Adventure, Family",
    description: "Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.",
    imdb_rating: "7.6",
    tomatoes_rating: "7.2",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMjAwMTExODExNl5BMl5BanBnXkFtZTgwMjM2MDgyMTE@._V1_SX300.jpg",
    flix_rating: 2,
    ranking: 3,
    combined_rating: 3.13
  },
  {
    imdb_id: "tt0058331",
    title: "Mary Poppins",
    release_date: "11 Sep 1964",
    decade: "60s",
    director: "Robert Stevenson",
    genre: "Comedy, Family, Fantasy",
    description: "A magic nanny comes to work for a cold banker's unhappy family.",
    imdb_rating: "7.8",
    tomatoes_rating: "8.3",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY1MDQwNTM3Ml5BMl5BanBnXkFtZTgwNzA3ODg3MDE@._V1_SX300.jpg",
    flix_rating: 10,
    ranking: 1,
    combined_rating: 6.02
  },
  {
    imdb_id: "tt0059742",
    title: "The Sound of Music",
    release_date: "29 Mar 1965",
    decade: "60s",
    director: "Robert Wise",
    genre: "Biography, Drama, Family",
    description: "A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.",
    imdb_rating: "8.0",
    tomatoes_rating: "8.0",
    poster: "https://images-na.ssl-images-amazon.com/images/M/MV5BMGYyZjk4MDMtYTZmMS00YWM2LTgxNDQtM2EwNzQ2MDZhNWQxXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg",
    flix_rating: 6,
    ranking: 2,
    combined_rating: 4.67
  }
])

votes = Vote.create([
  {
    user_id: 2,
    film_id: 18,
    type: "GoldVote",
    rating_value: 5
  },
  {
    user_id: 2,
    film_id: 19,
    type: "SilverVote",
    rating_value: 3
  },
  {
    user_id: 2,
    film_id: 17,
    type: "BronzeVote",
    rating_value: 1
  },
  {
    user_id: 2,
    film_id: 15,
    type: "GoldVote",
    rating_value: 5
  },
  {
    user_id: 2,
    film_id: 16,
    type: "SilverVote",
    rating_value: 3
  },
  {
    user_id: 2,
    film_id: 14,
    type: "BronzeVote",
    rating_value: 1
  },
  {
    user_id: 2,
    film_id: 13,
    type: "GoldVote",
    rating_value: 5
  },
  {
    user_id: 2,
    film_id: 11,
    type: "SilverVote",
    rating_value: 3
  },
  {
    user_id: 2,
    film_id: 12,
    type: "BronzeVote",
    rating_value: 1
  },
  {
    user_id: 2,
    film_id: 9,
    type: "GoldVote",
    rating_value: 5
  },
  {
    user_id: 2,
    film_id: 4,
    type: "SilverVote",
    rating_value: 3
  },
  {
    user_id: 2,
    film_id: 3,
    type: "BronzeVote",
    rating_value: 1
  },
  {
    user_id: 2,
    film_id: 5,
    type: "GoldVote",
    rating_value: 5
  },
  {
    user_id: 2,
    film_id: 8,
    type: "SilverVote",
    rating_value: 3
  },
  {
    user_id: 2,
    film_id: 6,
    type: "BronzeVote",
    rating_value: 1
  },
  {
    user_id: 2,
    film_id: 1,
    type: "GoldVote",
    rating_value: 5
  },
  {
    user_id: 2,
    film_id: 2,
    type: "SilverVote",
    rating_value: 3
  },
  {
    user_id: 2,
    film_id: 7,
    type: "BronzeVote",
    rating_value: 1
  },
  {
    user_id: 3,
    film_id: 10,
    type: "SilverVote",
    rating_value: 3
  },
  {
    user_id: 3,
    film_id: 3,
    type: "GoldVote",
    rating_value: 5
  }
])
