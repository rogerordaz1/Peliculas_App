part of 'nowplaying_bloc.dart';

@freezed
class NowplayingState with _$NowplayingState {
  const factory NowplayingState.loading() = _Loading;
  const factory NowplayingState.success(List<MovieEntity> movies) = _Success;
  const factory NowplayingState.failure(String errorMsg) = _Failure;
}
