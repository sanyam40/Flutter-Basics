class Movie {
  final String movieName;
  final double rating;
  final List<String> genre;
  final String moviePhotoLink;

  Movie({
    required this.movieName,
    required this.rating,
    required this.genre,
    required this.moviePhotoLink,
  });
}

List<Movie> movies = [
  Movie(
    movieName: "Dilwale Dulhania Le Jayenge",
    rating: 8.9,
    genre: ["Hindi", "Romance", "Drama"],
    moviePhotoLink:
        "https://m.media-amazon.com/images/M/MV5BOTViNjQ3MzctOGU2MC00NGY4LWIyZWYtYzkzMmIzMzgwZTIyXkEyXkFqcGdeQXVyNTE0MDc0NTM@._V1_.jpg",
  ),
  Movie(
    movieName: "The Shawshank Redemption",
    rating: 9.3,
    genre: ["English", "Drama"],
    moviePhotoLink:
        "https://i.etsystatic.com/23402008/r/il/34add4/2331558160/il_570xN.2331558160_j0yi.jpg",
  ),
  Movie(
    movieName: "Jatt & Juliet",
    rating: 7.8,
    genre: ["Punjabi", "Romance", "Comedy"],
    moviePhotoLink:
        "https://photogallery.indiatimes.com/movies/punjabi/jatt-juliet-2/photo/20759194/A-poster-from-Punjabi-movie-Jatt-Juliet-2-.jpg",
  ),
  Movie(
    movieName: "Gujjubhai: Most Wanted",
    rating: 7.5,
    genre: ["Gujarati", "Comedy"],
    moviePhotoLink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD4-6FWScENppJ7HLzk9Oa_RZDYSzgF0mgWTrpMyYhyA&s",
  ),
  Movie(
    movieName: "Baahubali: The Beginning",
    rating: 8.1,
    genre: ["Telugu", "Action", "Drama"],
    moviePhotoLink:
        "https://upload.wikimedia.org/wikipedia/en/4/47/Andhadhun_poster.jpg",
  ),
  Movie(
    movieName: "Dangal",
    rating: 8.4,
    genre: ["Hindi", "Biography", "Drama"],
    moviePhotoLink:
        "https://images.news18.com/ibnlive/uploads/2016/07/dangal.jpg",
  ),
  Movie(
    movieName: "The Godfather",
    rating: 9.2,
    genre: ["English", "Crime", "Drama"],
    moviePhotoLink:
        "https://rukminim2.flixcart.com/image/850/1000/keg02a80-0/poster/m/h/f/large-godfather02-large-the-godfather-movie-poster-with-frame-original-imafv4gnkf5crqxg.jpeg?q=90&crop=false",
  ),
  Movie(
    movieName: "Sardaar Ji",
    rating: 6.4,
    genre: ["Punjabi", "Action", "Comedy"],
    moviePhotoLink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwHPi3MJlpdylewCghp00WZwz_YF8pI6DeYVGesKeXUA&s",
  ),
  Movie(
    movieName: "Chhello Divas",
    rating: 8.0,
    genre: ["Gujarati", "Comedy", "Drama"],
    moviePhotoLink:
        "https://upload.wikimedia.org/wikipedia/en/7/7d/Chhello_Divas_Gujarati_film_poster.jpg",
  ),
  Movie(
    movieName: "Arjun Reddy",
    rating: 8.1,
    genre: ["Telugu", "Romance", "Drama"],
    moviePhotoLink:
        "https://upload.wikimedia.org/wikipedia/en/4/46/Arjun_Reddy.jpg",
  ),
  Movie(
    movieName: "3 Idiots",
    rating: 8.4,
    genre: ["Hindi", "Comedy", "Drama"],
    moviePhotoLink:
        "https://m.media-amazon.com/images/I/61PMVfjL0yL._AC_UF894,1000_QL80_.jpg",
  ),
  Movie(
    movieName: "The Dark Knight",
    rating: 9.0,
    genre: ["English", "Action", "Crime"],
    moviePhotoLink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmDg1PpQGs_UdCiw9k_G_-1WuUH_sMhI-yeMCcWJDVxg&s",
  ),
  Movie(
    movieName: "Carry On Jatta",
    rating: 7.4,
    genre: ["Punjabi", "Comedy"],
    moviePhotoLink:
        "https://m.media-amazon.com/images/M/MV5BYTdhMGIzNDAtNGJlNi00MTJhLThkOWYtZTM4MTg0OGY1ZGU4XkEyXkFqcGdeQXVyMzc0NzU5MTc@._V1_.jpg",
  ),
  Movie(
    movieName: "Bey Yaar",
    rating: 8.2,
    genre: ["Gujarati", "Drama"],
    moviePhotoLink:
        "https://m.media-amazon.com/images/M/MV5BMzU1NzY0M2MtMjRiMS00NTNiLTgxZTgtOTVmNjE2N2VhMTY5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg",
  ),
  Movie(
    movieName: "Baahubali 2: The Conclusion",
    rating: 8.2,
    genre: ["Telugu", "Action", "Drama"],
    moviePhotoLink:
        "https://lh3.googleusercontent.com/proxy/w26ddi8W7uFSGRx_vG6_mQeXQaZOJKe7zcYQFCNStlu6AzepNBCd67wPjQJKDBevJx5LIXP83FKuxoQ36EVx_-zGE-ORfqwLxNTm30Ep8xXYsgU5Evy3qKL67kfrZ8SVNag08LG1xYo",
  ),
  Movie(
    movieName: "Andhadhun",
    rating: 8.3,
    genre: ["Hindi", "Crime", "Thriller"],
    moviePhotoLink:
        "https://upload.wikimedia.org/wikipedia/en/4/47/Andhadhun_poster.jpg",
  ),
  Movie(
    movieName: "The Godfather: Part II",
    rating: 9.0,
    genre: ["English", "Crime", "Drama"],
    moviePhotoLink:
        "https://rukminim2.flixcart.com/image/850/1000/keg02a80-0/poster/m/h/f/large-godfather02-large-the-godfather-movie-poster-with-frame-original-imafv4gnkf5crqxg.jpeg?q=90&crop=false",
  ),
  Movie(
    movieName: "Qismat",
    rating: 7.9,
    genre: ["Punjabi", "Romance", "Drama"],
    moviePhotoLink:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk5CSgm79bWOktW_vz3Xk60myXdwx5azWL8saLMWFktA&s",
  ),
  Movie(
    movieName: "Ventilator",
    rating: 7.8,
    genre: ["Gujarati", "Drama"],
    moviePhotoLink:
        "https://m.media-amazon.com/images/M/MV5BYTEzYWRjYjktYzg0ZC00NmIwLTg2ZjEtZjZmMmRkOGJmYjJhXkEyXkFqcGdeQXVyNTUyMTYwMDI@._V1_.jpg",
  ),
  Movie(
    movieName: "Rangasthalam",
    rating: 8.3,
    genre: ["Telugu", "Action", "Drama"],
    moviePhotoLink:
        "https://m.media-amazon.com/images/M/MV5BYjkyNWNkN2EtMjc4NC00YjJmLTgxODMtMjE2NDY3N2QxOTM2XkEyXkFqcGdeQXVyNjkwOTg4MTA@._V1_.jpg",
  ),
];
