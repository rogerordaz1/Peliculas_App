import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies/const_app.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/domain/use_cases/top_rated_use_case.dart';

part 'top_rated_event.dart';
part 'top_rated_state.dart';
part 'top_rated_bloc.freezed.dart';

class TopRatedBloc extends Bloc<TopRatedEvent, TopRatedState> {
  final TopRatedUseCase useCase;
  int page = 0;
  bool isLoading = false;
  TopRatedBloc(this.useCase) : super(const _Loading(movies: [])) {
    on<TopRatedEvent>((event, emit) async {
      await event.when(
        movies: () async {
          if (isLoading) return;
          isLoading = true;
          page++;
          if (page < 500) {
            final failureOrMovies = await useCase(ParamPage(page.toString()));
            failureOrMovies.fold(
              (l) => emit(TopRatedState.failure(
                movies: [],
                errorMsg: ConstApp.errorMsgTopRated,
              )),
              (movies) => emit(
                TopRatedState.success(movies: [...state.movies, ...movies]),
              ),
            );
            isLoading = false;
          }
        },
      );
    });
  }
}
