import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies/features/movies/domain/entities/movie_entity.dart';
import 'package:movies/features/movies/domain/use_cases/now_playing_use_case.dart';

part 'nowplaying_event.dart';
part 'nowplaying_state.dart';
part 'nowplaying_bloc.freezed.dart';

class NowplayingBloc extends Bloc<NowplayingEvent, NowplayingState> {
  final NowPlayingUseCase useCase;
  int page = 0;
  NowplayingBloc(this.useCase) : super(const _Loading()) {
    on<NowplayingEvent>((event, emit) async {
      await event.when(
        movies: () async {
          page++;
          final failureOrMovies = await useCase(ParamPage(page.toString()));

          failureOrMovies.fold(
            (l) => emit(
              const NowplayingState.failure('Error to load nowplaying'),
            ),
            (movies) => emit(NowplayingState.success(movies)),
          );
        },
      );
    });
  }
}
