part of 'detail_bloc_bloc.dart';

@freezed
class DetailBlocEvent with _$DetailBlocEvent {
  const factory DetailBlocEvent.movieCliked({
    required String movieId,
  }) = _MovieCliked;
}