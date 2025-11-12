class Movie {
  final String title;
  final String imageUrl;
  final int rating;

  const Movie({
    required this.title,
    required this.imageUrl,
    required this.rating,
  });
}

class Movies {
  static const List<Movie> movies = [
    Movie(
      title: 'The Shawshank Redemption',
      imageUrl:
          'https://image.tmdb.org/t/p/w500/hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg',
      rating: 9,
    ),
    Movie(
      title: 'The Godfather',
      imageUrl:
          'https://image.tmdb.org/t/p/w500/hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg',
      rating: 9,
    ),
    Movie(
      title: 'The Dark Knight',
      imageUrl:
          'https://image.tmdb.org/t/p/w500/hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg',
      rating: 9,
    ),
    Movie(
      title: '12 Angry Men',
      imageUrl:
          'https://image.tmdb.org/t/p/w500/hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg',
      rating: 9,
    ),
    Movie(
      title: 'Schindler\'s List',
      imageUrl:
          'https://image.tmdb.org/t/p/w500/hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg',
      rating: 9,
    ),
    Movie(
      title: 'The Lord of the Rings: The Return of the King',
      imageUrl:
          'https://image.tmdb.org/t/p/w500/hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg',
      rating: 9,
    ),
    Movie(
      title: 'Pulp Fiction',
      imageUrl:
          'https://image.tmdb.org/t/p/w500/hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg',
      rating: 9,
    ),
    Movie(
      title: 'The Lord of the Rings: The Fellowship of the Ring',
      imageUrl:
          'https://image.tmdb.org/t/p/w500/hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg',
      rating: 9,
    ),
    Movie(
      title: 'The Good, the Bad and the Ugly',
      imageUrl:
          'https://image.tmdb.org/t/p/w500/hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg',
      rating: 9,
    ),
    Movie(
      title: 'Forrest Gump',
      imageUrl:
          'https://image.tmdb.org/t/p/w500/hbhFnRzzg6ZDmm8YAmxBnQpQIPh.jpg',
      rating: 9,
    ),
  ];
}
