import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies/const_app.dart';
import 'package:movies/core/use_cases/use_cases.dart';
import 'package:movies/features/movies/domain/entities/actor_entity.dart';
import 'package:movies/features/movies/domain/use_cases/cast_movie_x_id_use_case.dart';

part 'cast_event.dart';
part 'cast_state.dart';
part 'cast_bloc.freezed.dart';

class CastBloc extends Bloc<CastEvent, CastState> {
  final CastMovieXidUseCase useCase;

  CastBloc(this.useCase) : super(const _Loading()) {
    on<CastEvent>((event, emit) async {
      
      await event.when(
        cast: (id) async {
          emit(const _Loading());
          final failureOrMovie = await useCase(ParamMovieID(id));
          failureOrMovie.fold(
            (l) => emit(_Failure(errorMsg: ConstApp.errorMsgCast)),
            (cast) => emit(_Success(cast: cast)),
          );
        },
      );
    });
  }
}
