part of 'upcoming_bloc.dart';

@freezed
class UpcomingState with _$UpcomingState {
  const factory UpcomingState.loading({
    required List<MovieEntity> movies,
  }) = _Loading;
  const factory UpcomingState.success({
    required List<MovieEntity> movies,
  }) = _Success;
  const factory UpcomingState.failure({
    required List<MovieEntity> movies,
    required String errorMsg,
  }) = _Failure;
}
