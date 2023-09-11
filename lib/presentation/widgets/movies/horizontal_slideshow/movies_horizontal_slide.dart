import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:cinemapedia/domain/entities/movie.dart';

class MoviesHorizontalSlide extends StatelessWidget {
  final Movie movie;

  const MoviesHorizontalSlide({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final textStyles = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: FadeInRight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Imagen */
            MoviesSlideshowImage(movie: movie),
            const SizedBox(height: 5),
            /* Titulo */
            SizedBox(
              width: 150,
              child: Text(
                movie.title,
                maxLines: 2,
                style: textStyles.titleSmall,
              ),
            ),
            /* Rating */
            MoviesHorizontalRating(movie: movie, textStyles: textStyles),
          ],
        ),
      ),
    );
  }
}
