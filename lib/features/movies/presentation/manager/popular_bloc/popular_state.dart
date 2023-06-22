part of 'popular_bloc.dart';

@freezed
class PopularState with _$PopularState {
  const factory PopularState.loading({
    required List<MovieEntity> movies,
  }) = _Loading;
  const factory PopularState.success({
    required List<MovieEntity> movies,
  }) = _Success;
  const factory PopularState.failure({
    required List<MovieEntity> movies,
    required String errorMsg,
  }) = _Failure;
}
