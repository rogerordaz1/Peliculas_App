import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/const_app.dart';

import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/presentation/manager/cast_bloc/cast_bloc.dart';
import 'package:movies/features/movies/presentation/pages/movie/movie_page.dart';

import '../../../manager/detail_bloc/detail_bloc_bloc.dart';

class SliderHorizontal extends StatefulWidget {
  const SliderHorizontal({
    Key? key,
    required this.movies,
    required this.title,
    required this.controller,
    required this.listener,
  }) : super(key: key);

  final String title;
  final List<MovieEntity> movies;
  final PageController controller;
  final Function listener;
  @override
  State<SliderHorizontal> createState() => _SliderHorizontalState();
}

class _SliderHorizontalState extends State<SliderHorizontal> {
  @override
  void initState() {
    widget.controller.addListener(() {
      if (widget.controller.position.pixels >=
          widget.controller.position.maxScrollExtent - 200) {
        widget.listener();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeText = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30),
          child: Text(widget.title, style: themeText.headlineSmall),
        ),
        SizedBox(
          height: 180,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            pageSnapping: false,
            controller: widget.controller,
            itemCount: widget.movies.length,
            itemBuilder: (_, i) {
              return SliderHorizontalItem(widget.movies[i], widget.title);
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class SliderHorizontalItem extends StatelessWidget {
  const SliderHorizontalItem(this.movie, this.title, {Key? key})
      : super(key: key);

  final String title;

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    final tag = movie.id.toString() + title;
    final detailBloc = context.read<DetailBloc>();
    return GestureDetector(
      onTap: () {
        context.read<CastBloc>().add(CastEvent.cast(movie.id.toString()));
        detailBloc
            .add(DetailBlocEvent.movieCliked(movieId: movie.id.toString()));

        Navigator.pushNamed(
          context,
          MoviePage.routeName,
          arguments: [movie, tag],
        );
      },
      child: Hero(
        tag: tag,
        child: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              fit: BoxFit.fill,
              placeholder: AssetImage(ConstApp.placeholder),
              image: CachedNetworkImageProvider(
                '${ConstApp.urlImage}${movie.poster_path}',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
