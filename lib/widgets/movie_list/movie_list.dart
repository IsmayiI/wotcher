import 'package:flutter/material.dart';
import 'package:wotcher/data/movies.dart';
import 'package:wotcher/theme/app_colors.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: Movies.movies.length,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          mainAxisExtent: 300,
        ),
        itemBuilder: (context, index) =>
            Stack(children: [_MovieItem(index), _TapEffect()]),
      ),
    );
  }
}

class _TapEffect extends StatelessWidget {
  const _TapEffect();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: AppColors.yellow.withAlpha(100),
        borderRadius: BorderRadius.circular(8),
        onTap: () {},
      ),
    );
  }
}

class _MovieItem extends StatelessWidget {
  final int index;
  const _MovieItem(this.index);

  @override
  Widget build(BuildContext context) {
    final movie = Movies.movies[index];
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _MovieItemPoster(movie.imageUrl),
        _MovieItemFooter(movie.title, movie.rating),
      ],
    );
  }
}

class _MovieItemPoster extends StatelessWidget {
  final String poster;
  const _MovieItemPoster(this.poster);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(8),
      child: Image.network(poster),
    );
  }
}

class _MovieItemFooter extends StatelessWidget {
  final String title;
  final int rating;
  const _MovieItemFooter(this.title, this.rating);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: _MovieItemName(title)),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: _MovieItemRating(rating),
        ),
      ],
    );
  }
}

class _MovieItemRating extends StatelessWidget {
  final int rating;
  const _MovieItemRating(this.rating);

  @override
  Widget build(BuildContext context) {
    return Text(
      rating.toString(),
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppColors.yellow,
      ),
    );
  }
}

class _MovieItemName extends StatelessWidget {
  final String name;
  const _MovieItemName(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.grey,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
