part of 'detail_bloc_bloc.dart';


@freezed
class DetailBlocState with _$DetailBlocState {
  const factory DetailBlocState.initial() = _Initial;
  const factory DetailBlocState.loading() = _Loading;
  const factory DetailBlocState.success({
    required MovieDetailEntity movieDetail,
  }) = _Seccess;
  const factory DetailBlocState.error({
    required String errorMessage,
  }) = _Error;
}
