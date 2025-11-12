import 'package:flutter/material.dart';
import 'package:wotcher/data/movies.dart';
import 'package:wotcher/theme/app_colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller = TextEditingController();
  final movies = Movies.movies;
  List<Movie> searchMovies = [];

  @override
  void initState() {
    controller.addListener(() => searchMovie(controller.text));
    super.initState();
  }

  void searchMovie(String text) {
    setState(() {
      if (text.trim().isEmpty) {
        searchMovies = [];
        return;
      }

      searchMovies = movies
          .where(
            (movie) => movie.title.toLowerCase().contains(text.toLowerCase()),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final suffixIcon = controller.text.isEmpty
        ? null
        : Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(Icons.clear_rounded),
              style: IconButton.styleFrom(
                iconSize: 16,
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () => controller.clear(),
            ),
          );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            TextField(
              controller: controller,
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              style: TextStyle(color: AppColors.foreground),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                isCollapsed: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.searchBarBorder),
                ),
                hintText: 'Search...',
                hintStyle: TextStyle(color: AppColors.placeholder),
                fillColor: AppColors.searchBarBackground,
                filled: true,
                suffixIcon: suffixIcon,
                suffixIconConstraints: BoxConstraints(
                  minWidth: 0,
                  minHeight: 0,
                ),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView.separated(
                itemCount: searchMovies.length,
                itemBuilder: (context, index) {
                  final movie = searchMovies[index];
                  return Row(
                    children: [
                      Image.network(
                        movie.imageUrl,
                        height: 61,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movie.title,
                              style: TextStyle(fontSize: 15),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Movie',
                                  style: TextStyle(
                                    color: AppColors.placeholder,
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  ' • ',
                                  style: TextStyle(
                                    color: AppColors.placeholder,
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  '2025',
                                  style: TextStyle(
                                    color: AppColors.placeholder,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
