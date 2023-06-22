import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies/const_app.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster(this.movie, this.tag, {super.key});

  final MovieEntity movie;
  final String tag;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.aboveBaseline,
                  baseline: TextBaseline.ideographic,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Hero(
                      tag: tag,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage(
                          placeholder: AssetImage(ConstApp.placeholder),
                          fadeInDuration: const Duration(milliseconds: 150),
                          image: CachedNetworkImageProvider(
                            '${ConstApp.urlImage}${movie.poster_path}',
                          ),
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                TextSpan(
                  style: textTheme.titleMedium,
                  text: movie.overview,
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 140,
          top: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  movie.original_title,
                  style: textTheme.headlineSmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
              RichText(
                text: TextSpan(children: [
                  const WidgetSpan(
                    child: Icon(
                      Icons.star_border_purple500_outlined,
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: 'Vote Average: ${movie.vote_average}',
                    style: textTheme.titleLarge,
                  )
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
