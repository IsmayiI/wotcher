import 'package:flutter/material.dart';
import 'package:wotcher/theme/app_colors.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 20,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          mainAxisExtent: 300,
        ),
        itemBuilder: (context, index) =>
            Stack(children: [_MovieItem(), _TapEffect()]),
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
  const _MovieItem();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_MovieItemPoster(), _MovieItemFooter()],
    );
  }
}

class _MovieItemPoster extends StatelessWidget {
  const _MovieItemPoster();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(8),
      child: Image.network(
        'https://image.tmdb.org/t/p/w500/wPLysNDLffQLOVebZQCbXJEv6E6.jpg',
      ),
    );
  }
}

class _MovieItemFooter extends StatelessWidget {
  const _MovieItemFooter();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: _MovieItemName()),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: _MovieItemRating(),
        ),
      ],
    );
  }
}

class _MovieItemRating extends StatelessWidget {
  const _MovieItemRating();

  @override
  Widget build(BuildContext context) {
    return Text(
      '99',
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppColors.yellow,
      ),
    );
  }
}

class _MovieItemName extends StatelessWidget {
  const _MovieItemName();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Superman',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.grey,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
