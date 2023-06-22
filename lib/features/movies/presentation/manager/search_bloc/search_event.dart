part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.movies({
    required String query,
  }) = _Movies;
  const factory SearchEvent.addToHistory({
    required MovieEntity movie,
  }) = _AddToHistory;
}
