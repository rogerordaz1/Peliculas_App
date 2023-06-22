import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies/const_app.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar(this.movie, {super.key});

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.indigoAccent,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: FadeInImage(
          placeholder: AssetImage(ConstApp.placeholderGig),
          fadeInDuration: const Duration(milliseconds: 150),
          image: CachedNetworkImageProvider(
            '${ConstApp.urlImage}${movie.backdrop_path}',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
