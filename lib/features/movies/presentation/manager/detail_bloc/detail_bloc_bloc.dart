import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movies/features/movies/domain/use_cases/get_movie_detail_use_case.dart';

import '../../../../../core/use_cases/use_cases.dart';
import '../../../domain/entities/movie_detail_entity.dart';

part 'detail_bloc_event.dart';
part 'detail_bloc_state.dart';
part 'detail_bloc_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailBlocEvent, DetailBlocState> {
  final GetMovieDetail detailUsecase;

  DetailBloc(this.detailUsecase) : super(const _Initial()) {


    on<DetailBlocEvent>(
      (event, emit) async {

       await event.when(
          movieCliked: (id) async {
            emit(const DetailBlocState.loading());

            final result = await detailUsecase(ParamMovieID(id));

            result.fold(
              (failure) => emit(const DetailBlocState.error(
                  errorMessage: "Error al Cargar los detalles de la Pelicula")),
              (movieDetail) =>
                  emit(DetailBlocState.success(movieDetail: movieDetail)),
            );
          },
        );
      },
    );
  }
}
