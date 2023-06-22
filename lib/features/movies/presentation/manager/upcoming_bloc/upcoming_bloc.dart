import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies/const_app.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/domain/use_cases/upcoming_use_case.dart';

part 'upcoming_event.dart';
part 'upcoming_state.dart';
part 'upcoming_bloc.freezed.dart';

class UpcomingBloc extends Bloc<UpcomingEvent, UpcomingState> {
  final UpComingUseCase useCase;
  int page = 0;
  bool isLoading = false;

  UpcomingBloc(this.useCase) : super(const _Loading(movies: [])) {
    on<UpcomingEvent>((event, emit) async {
      await event.when(
        movies: () async {
          if (isLoading) return;
          page++;
          if (page < 500) {
            final failureOrMovies = await useCase(ParamPage(page.toString()));
            failureOrMovies.fold(
              (l) => emit(_Failure(
                movies: [],
                errorMsg: ConstApp.errorMsgUpcoming,
              )),
              (movies) => emit(_Success(movies: [...state.movies, ...movies])),
            );
          }
        },
      );
    });
  }
}
