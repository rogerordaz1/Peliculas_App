part of 'nowplaying_bloc.dart';

@freezed
class NowplayingEvent with _$NowplayingEvent {
  const factory NowplayingEvent.movies() = _Movies;
}
