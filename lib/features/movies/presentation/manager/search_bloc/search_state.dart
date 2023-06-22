part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _Loading;
  const factory SearchState.success({
    required List<MovieEntity> movies,
  }) = _Success;
  const factory SearchState.failure({
    required String errorMsg,
  }) = _Failure;
  const factory SearchState.addToHistorySuccess() = _Addtohistorysuccess;
  const factory SearchState.addToHistoryFailure({
    required String errorMsg,
  }) = _AddToHistoryFailure;
}
