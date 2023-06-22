import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/presentation/manager/detail_bloc/detail_bloc_bloc.dart';
import 'package:movies/features/movies/presentation/pages/movie/widgets/custom_sliver_app_bar.dart';
import 'package:movies/features/movies/presentation/pages/movie/widgets/movie_poster.dart';
import 'package:movies/features/movies/presentation/pages/movie/widgets/slider_horizontal_cast.dart';

import '../../widgets/loading_widget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);
  static const String routeName = 'movie';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as List;
    final movie = arguments[0] as MovieEntity;
    final tag = arguments[1] as String;

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(movie),
          SliverList(
            delegate: SliverChildListDelegate([
              MoviePoster(movie, tag),
              SizedBox(
                height: size.height * 0.4,
                width: double.infinity,
                child: BlocBuilder<DetailBloc, DetailBlocState>(
                  builder: (context, state) => state.when(
                    initial: () => const SizedBox(),
                    loading: () => LoadingWidget(height: size.height * 0.3),
                    success: (detail) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: size.height * 0.30,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                children: [
                                  CustomDetailRow(
                                    value: detail.title,
                                    detail: 'Title',
                                  ),
                                  CustomDetailRow(
                                    detail: "Popularity",
                                    value: detail.popularity.toString(),
                                  ),
                                  CustomDetailRow(
                                    value: detail.status,
                                    detail: 'Status',
                                  ),
                                  CustomDetailRow(
                                    value: detail.voteCount.toString(),
                                    detail: 'Vote Count',
                                  ),
                                  CustomDetailRow(
                                    value: detail.budget.toString(),
                                    detail: 'Budget',
                                  ),
                                  CustomDetailRow(
                                    value:
                                        "${detail.releaseDate.month} / ${detail.releaseDate.year.toString()}",
                                    detail: 'Release Date',
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Text(
                            'Genres',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: detail.genres.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Chip(
                                    label: Text(
                                      detail.genres[index].name,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                    error: (mes) => Text(mes),
                  ),
                ),
              ),
              const SliderHorizontalCast(),
            ]),
          )
        ],
      ),
    );
  }
}

class CustomDetailRow extends StatelessWidget {
  const CustomDetailRow({
    super.key,
    required this.detail,
    required this.value,
  });
  final String detail;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            detail,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
          ),
        ],
      ),
    );
  }
}
