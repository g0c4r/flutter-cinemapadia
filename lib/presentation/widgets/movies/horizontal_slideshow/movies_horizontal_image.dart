import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:cinemapedia/domain/entities/movie.dart';

class MoviesSlideshowImage extends StatelessWidget {
  const MoviesSlideshowImage({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          movie.posterPath,
          fit: BoxFit.cover,
          width: 150,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress != null) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              );
            }
            return FadeIn(child: child);
          },
        ),
      ),
    );
  }
}
