part of 'cast_bloc.dart';

@freezed
class CastState with _$CastState {
  const factory CastState.loading() = _Loading;
  const factory CastState.success({
    required List<ActorEntity> cast,
  }) = _Success;
  const factory CastState.failure({
    required String errorMsg,
  }) = _Failure;
}
