import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/const_app.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/presentation/manager/search_bloc/search_bloc.dart';
import 'package:movies/features/movies/presentation/pages/movie/movie_page.dart';

class SugestionsWidget extends StatelessWidget {
  const SugestionsWidget(this.movies, {Key? key}) : super(key: key);

  final List<MovieEntity> movies;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: movies.length,
      itemBuilder: (_, i) => SugestionItemWidget(movies[i]),
      separatorBuilder: (_, __) => const Divider(),
    );
  }
}

class SugestionItemWidget extends StatelessWidget {
  const SugestionItemWidget(this.movie, {Key? key}) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(movie.title),
      leading: Hero(
        tag: movie.id.toString(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: FadeInImage(
            placeholder: AssetImage(ConstApp.placeholder),
            image: CachedNetworkImageProvider(
              '${ConstApp.urlImage}${movie.poster_path}',
            ),
          ),
        ),
      ),
      onTap: () {
        context.read<SearchBloc>().add(SearchEvent.addToHistory(movie: movie));
        Navigator.pushNamed(
          context,
          MoviePage.routeName,
          arguments: [movie, movie.id.toString()],
        );
      },
    );
  }
}
