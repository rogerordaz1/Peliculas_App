part of 'top_rated_bloc.dart';

@freezed
class TopRatedState with _$TopRatedState {
  const factory TopRatedState.loading({
    required List<MovieEntity> movies,
  }) = _Loading;
  const factory TopRatedState.success({
    required List<MovieEntity> movies,
  }) = _Success;
  const factory TopRatedState.failure({
    required List<MovieEntity> movies,
    required String errorMsg,
  }) = _Failure;
}
