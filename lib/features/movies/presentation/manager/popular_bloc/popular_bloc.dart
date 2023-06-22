import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies/const_app.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/domain/use_cases/popular_use_case.dart';

part 'popular_event.dart';
part 'popular_state.dart';
part 'popular_bloc.freezed.dart';

class PopularBloc extends Bloc<PopularEvent, PopularState> {
  final PopularUseCase useCase;
  int page = 0;
  bool isLoading = false;
  PopularBloc(this.useCase) : super(const _Loading(movies: [])) {
    on<PopularEvent>((event, emit) async {
      await event.when(
        movies: () async {
          if (isLoading) return;
          isLoading = true;
          page++;
          if (page < 500) {
            final failureOrMovies = await useCase(ParamPage(page.toString()));
            failureOrMovies.fold(
              (failure) => emit(PopularState.failure(
                movies: [],
                errorMsg: ConstApp.errorMsgPopular,
              )),
              (movies) => emit(PopularState.success(
                movies: [...state.movies, ...movies],
              )),
            );
            isLoading = false;
          }
        },
      );
    });
  }
}
