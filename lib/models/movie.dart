class Movie {
  Movie(
      {this.movieName = '',
      this.moviePoster = '',
      this.movieReleaseYear = '',
      this.movieCategory = '',
      this.movieDuration = '',
      this.movieRating = '',
      this.movieSinopsis = '',
      this.movieCast = const []});

  String movieName;
  String moviePoster;
  String movieReleaseYear;
  String movieCategory;
  String movieDuration;
  String movieRating;
  String movieSinopsis;
  List<String> movieCast;
}

var newMovies = [
  Movie(
    movieName: 'The Loverbirds',
    moviePoster: 'lib/assets/movie_posters/1.jpg',
    movieReleaseYear: '2020',
    movieCategory: 'Action-Adventure',
    movieDuration: '1h 27m',
    movieRating: '2.3',
    movieSinopsis:
        'Un couple au bord de la rupture se retrouve impliqué dans un meurtre mystérieux.',
    movieCast: ['Kumail Nanjiani', 'Issa Rae', 'Anna Camp'],
  ),
  Movie(
    movieName: 'The Adam Project',
    moviePoster: 'lib/assets/movie_posters/3.jpg',
    movieReleaseYear: '2022',
    movieCategory: 'Sci-fi-Drama',
    movieDuration: '1h 46min',
    movieRating: '4',
    movieSinopsis:
        'The Adam Project is a 2022 American science fiction action comedy-drama film co-produced by Skydance Media...',
    movieCast: ['Ryan Reynolds', 'Walker Scobell', 'Jennifer Garner'],
  ),
  Movie(
    movieName: 'Spider-Man: No Way Home',
    moviePoster: 'lib/assets/movie_posters/img-spiderman.jpg',
    movieReleaseYear: '2021',
    movieCategory: 'Action-Adventure-Fantasy',
    movieDuration: '2h 28m',
    movieRating: '4.7',
    movieSinopsis:
        'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
    movieCast: ['Tom Holland', 'Zendaya', 'Benedict Cumberbatch'],
  ),
  Movie(
    movieName: 'The Matrix Resurrections',
    moviePoster: 'lib/assets/movie_posters/img-matrix.jpg',
    movieReleaseYear: '2021',
    movieCategory: 'Action-Sci-Fi',
    movieDuration: '2h 28m',
    movieRating: '3.5',
    movieSinopsis:
        'Return to a world of two realities: one, everyday life; the other, what lies behind it. To find out if his reality is a construct, to truly know himself, Mr. Anderson will have to choose to follow the white rabbit once more.',
    movieCast: ['Keanu Reeves', 'Carrie-Anne Moss', 'Yahya Abdul-Mateen II'],
  ),
  Movie(
    movieName: 'The Fighter',
    moviePoster: 'lib/assets/movie_posters/9.jpg',
    movieReleaseYear: '2010',
    movieCategory: 'Drama-Sport',
    movieDuration: '1h 56m',
    movieRating: '4.2',
    movieSinopsis:
        'Micky Ward, a struggling boxer, teams up with his older half-brother Dicky Eklund, a recovering cocaine addict, to get his career back on track.',
    movieCast: ['Christian Bale', 'Mark Wahlberg', 'Micky Ward'],
  ),
  Movie(
    movieName: 'Allied',
    moviePoster: 'lib/assets/movie_posters/12.jpg',
    movieReleaseYear: '2016',
    movieCategory: 'Drama-Sport',
    movieDuration: '2h 4m',
    movieRating: '4.2',
    movieSinopsis:
        'World War II operatives, Max and Marianne, fall in love and get married. However, he receives a call informing him that his wife is working for the enemy, making their marriage rocky.',
    movieCast: ['Marion Cotillard', 'Brad Pitt', 'Lizzy Caplan'],
  ),
  Movie(
    movieName: 'The raid',
    moviePoster: 'lib/assets/movie_posters/13.jpg',
    movieReleaseYear: '2011',
    movieCategory: 'Action-Crime',
    movieDuration: '1h 41m',
    movieRating: '4.4',
    movieSinopsis:
    'After getting stuck inside a 15-storey safe house belonging to drug lord Tama, Rama and his team must use the little ammunition they have to take him down and survive the unofficial mission.',
    movieCast: ['Iko Uwais', 'Yayan Ruhian', 'Donny Alamsyah'],
  ),
  Movie(
    movieName: 'Eternals',
    moviePoster: 'lib/assets/movie_posters/img-eternals.jpg',
    movieReleaseYear: '2021',
    movieCategory: 'Action-Adventure-Fantasy',
    movieDuration: '2h 36m',
    movieRating: '4.2',
    movieSinopsis:
        'The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.',
    movieCast: ['Gemma Chan', 'Richard Madden', 'Angelina Jolie'],
  ),
  Movie(
    movieName: 'Squid Game',
    moviePoster: 'lib/assets/movie_posters/2.jpg',
    movieReleaseYear: '2021',
    movieCategory: 'Drama',
    movieDuration: 'one season',
    movieRating: '4',
    movieSinopsis:
        'Hundreds of cash-strapped contestants accept an invitation to compete in children\'s games for a tempting prize.',
    movieCast: ['HoYeon Jung', 'Lee Jung-Jae', 'Gong Yoo'],
  ),
];

var upcomingMovies = [
  Movie(
    movieName: 'Extraction',
    moviePoster: 'lib/assets/movie_posters/4.jpg',
    movieReleaseYear: '2020',
    movieCategory: 'Action-Thriller',
    movieDuration: '1h 56m',
    movieRating: '3.4',
    movieSinopsis:
        'Extraction is a 2020 American action thriller film directed by Sam Hargrave and written by Joe Russo.',
    movieCast: ['Chris Hemsworth', 'Golshifteh Farhani', 'David Harbour'],
  ),
  Movie(
    movieName: 'How it Ends',
    moviePoster: 'lib/assets/movie_posters/7.jpg',
    movieReleaseYear: '2018',
    movieCategory: 'Action',
    movieDuration: '1h 54m',
    movieRating: '4',
    movieSinopsis:
        'Following a mysterious disaster, Will, a young lawyer, accompanied by his future father-in-law, embarks on a dangerous journey to rescue his fiancee from Seattle.',
    movieCast: ['Theo James', 'Forest Whitaker', 'Kat Graham'],
  ),
  Movie(
    movieName: 'Uncorked',
    moviePoster: 'lib/assets/movie_posters/6.jpg',
    movieReleaseYear: '2020',
    movieCategory: 'Drama',
    movieDuration: '1h 44m',
    movieRating: '3.2',
    movieSinopsis:
        'A young man upsets his father when he pursues his dream of becoming a master sommelier instead of joining the family barbecue business.',
    movieCast: ['Mamoudou Athie', 'Courtney B.Vance', 'Sasha Compere'],
  ),

  Movie(
    movieName: 'Aquaman',
    moviePoster: 'lib/assets/movie_posters/img-aquaman.jpg',
    movieReleaseYear: '2018',
    movieCategory: 'Action-Adventure-Fantasy',
    movieDuration: '2h 23m',
    movieRating: '4.3',
    movieSinopsis:
        'Arthur Curry, the human-born heir to the underwater kingdom of Atlantis, goes on a quest to prevent a war between the worlds of ocean and land.',
    movieCast: ['Jason Momoa', 'Amber Heard', 'Willem Dafoe'],
  ),
  Movie(
    movieName: 'Batman',
    moviePoster: 'lib/assets/movie_posters/img-batman.jpg',
    movieReleaseYear: '2022',
    movieCategory: 'Action-Crime-Drama',
    movieDuration: '2h 56m',
    movieRating: '4.7',
    movieSinopsis:
        'When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city\'s hidden corruption and question his family\'s involvement.',
    movieCast: ['Robert Pattinson', 'Zoë Kravitz', 'Jeffrey Wright'],
  ),
  Movie(
    movieName: 'Sonic the Hedgehog 2',
    moviePoster: 'lib/assets/movie_posters/img-sonic.jpg',
    movieReleaseYear: '2022',
    movieCategory: 'Animation-Action-Adventure',
    movieDuration: '2h 2m',
    movieRating: '4.5',
    movieSinopsis:
        'When the manic Dr Robotnik returns to Earth with a new ally, Knuckles the Echidna, Sonic and his new friend Tails is all that stands in their way.',
    movieCast: ['Ben Schwartz', 'Idris Elba', 'Colleen O\'Shaughnessey'],
  ),
];
