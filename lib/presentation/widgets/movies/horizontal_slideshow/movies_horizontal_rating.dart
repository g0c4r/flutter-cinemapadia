import 'package:flutter/material.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/config/helpers/human_formats.dart';

class MoviesHorizontalRating extends StatelessWidget {
  const MoviesHorizontalRating({
    super.key,
    required this.movie,
    required this.textStyles,
  });
  final Movie movie;
  final TextTheme textStyles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Row(
        children: [
          Icon(Icons.star_half_outlined, color: Colors.yellow.shade800),
          const SizedBox(height: 3),
          Text(
            '${movie.voteAverage}',
            style:
                textStyles.bodyMedium?.copyWith(color: Colors.yellow.shade800),
          ),
          const SizedBox(width: 10),
          const Spacer(),
          Text(HumanFormats.number(movie.popularity),
              style: textStyles.bodySmall),
        ],
      ),
    );
  }
}
