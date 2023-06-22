import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies/const_app.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/domain/use_cases/add_movie_to_history_search_use_case.dart';
import 'package:movies/features/movies/domain/use_cases/search_movie_use_case.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchMovieUseCase searchMovieUseCase;
  final AddMovieToHistorySearchUseCase addMovieToHistorySearchUseCase;
  SearchBloc(
    this.searchMovieUseCase,
    this.addMovieToHistorySearchUseCase,
  ) : super(const _Loading()) {
    on<SearchEvent>((event, emit) async {
      await event.when(
        movies: (query) async {
          emit(const _Loading());
          final failureOrMovies = await searchMovieUseCase(ParamQuery(query));
          failureOrMovies.fold(
            (l) => emit(_Failure(errorMsg: ConstApp.errorMsgSearch)),
            (movies) => emit(_Success(movies: movies)),
          );
        },
        addToHistory: (movie) async {
          final failureOrVoid = await addMovieToHistorySearchUseCase(
            ParamsMovieEntity(movie),
          );
          failureOrVoid.fold(
            (l) => emit(_AddToHistoryFailure(
              errorMsg: ConstApp.errorMsgAddToHistory,
            )),
            (_) => emit(const _Addtohistorysuccess()),
          );
        },
      );
    });
  }
}
