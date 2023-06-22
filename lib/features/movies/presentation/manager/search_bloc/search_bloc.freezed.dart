// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) movies,
    required TResult Function(MovieEntity movie) addToHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? movies,
    TResult? Function(MovieEntity movie)? addToHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? movies,
    TResult Function(MovieEntity movie)? addToHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Movies value) movies,
    required TResult Function(_AddToHistory value) addToHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Movies value)? movies,
    TResult? Function(_AddToHistory value)? addToHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Movies value)? movies,
    TResult Function(_AddToHistory value)? addToHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MoviesCopyWith<$Res> {
  factory _$$_MoviesCopyWith(_$_Movies value, $Res Function(_$_Movies) then) =
      __$$_MoviesCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_MoviesCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_Movies>
    implements _$$_MoviesCopyWith<$Res> {
  __$$_MoviesCopyWithImpl(_$_Movies _value, $Res Function(_$_Movies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_Movies(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Movies implements _Movies {
  const _$_Movies({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.movies(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Movies &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoviesCopyWith<_$_Movies> get copyWith =>
      __$$_MoviesCopyWithImpl<_$_Movies>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) movies,
    required TResult Function(MovieEntity movie) addToHistory,
  }) {
    return movies(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? movies,
    TResult? Function(MovieEntity movie)? addToHistory,
  }) {
    return movies?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? movies,
    TResult Function(MovieEntity movie)? addToHistory,
    required TResult orElse(),
  }) {
    if (movies != null) {
      return movies(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Movies value) movies,
    required TResult Function(_AddToHistory value) addToHistory,
  }) {
    return movies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Movies value)? movies,
    TResult? Function(_AddToHistory value)? addToHistory,
  }) {
    return movies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Movies value)? movies,
    TResult Function(_AddToHistory value)? addToHistory,
    required TResult orElse(),
  }) {
    if (movies != null) {
      return movies(this);
    }
    return orElse();
  }
}

abstract class _Movies implements SearchEvent {
  const factory _Movies({required final String query}) = _$_Movies;

  String get query;
  @JsonKey(ignore: true)
  _$$_MoviesCopyWith<_$_Movies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddToHistoryCopyWith<$Res> {
  factory _$$_AddToHistoryCopyWith(
          _$_AddToHistory value, $Res Function(_$_AddToHistory) then) =
      __$$_AddToHistoryCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieEntity movie});
}

/// @nodoc
class __$$_AddToHistoryCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_AddToHistory>
    implements _$$_AddToHistoryCopyWith<$Res> {
  __$$_AddToHistoryCopyWithImpl(
      _$_AddToHistory _value, $Res Function(_$_AddToHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$_AddToHistory(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as MovieEntity,
    ));
  }
}

/// @nodoc

class _$_AddToHistory implements _AddToHistory {
  const _$_AddToHistory({required this.movie});

  @override
  final MovieEntity movie;

  @override
  String toString() {
    return 'SearchEvent.addToHistory(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToHistory &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToHistoryCopyWith<_$_AddToHistory> get copyWith =>
      __$$_AddToHistoryCopyWithImpl<_$_AddToHistory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) movies,
    required TResult Function(MovieEntity movie) addToHistory,
  }) {
    return addToHistory(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? movies,
    TResult? Function(MovieEntity movie)? addToHistory,
  }) {
    return addToHistory?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? movies,
    TResult Function(MovieEntity movie)? addToHistory,
    required TResult orElse(),
  }) {
    if (addToHistory != null) {
      return addToHistory(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Movies value) movies,
    required TResult Function(_AddToHistory value) addToHistory,
  }) {
    return addToHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Movies value)? movies,
    TResult? Function(_AddToHistory value)? addToHistory,
  }) {
    return addToHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Movies value)? movies,
    TResult Function(_AddToHistory value)? addToHistory,
    required TResult orElse(),
  }) {
    if (addToHistory != null) {
      return addToHistory(this);
    }
    return orElse();
  }
}

abstract class _AddToHistory implements SearchEvent {
  const factory _AddToHistory({required final MovieEntity movie}) =
      _$_AddToHistory;

  MovieEntity get movie;
  @JsonKey(ignore: true)
  _$$_AddToHistoryCopyWith<_$_AddToHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(String errorMsg) failure,
    required TResult Function() addToHistorySuccess,
    required TResult Function(String errorMsg) addToHistoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? success,
    TResult? Function(String errorMsg)? failure,
    TResult? Function()? addToHistorySuccess,
    TResult? Function(String errorMsg)? addToHistoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(String errorMsg)? failure,
    TResult Function()? addToHistorySuccess,
    TResult Function(String errorMsg)? addToHistoryFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Addtohistorysuccess value) addToHistorySuccess,
    required TResult Function(_AddToHistoryFailure value) addToHistoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult? Function(_AddToHistoryFailure value)? addToHistoryFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult Function(_AddToHistoryFailure value)? addToHistoryFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(String errorMsg) failure,
    required TResult Function() addToHistorySuccess,
    required TResult Function(String errorMsg) addToHistoryFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? success,
    TResult? Function(String errorMsg)? failure,
    TResult? Function()? addToHistorySuccess,
    TResult? Function(String errorMsg)? addToHistoryFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(String errorMsg)? failure,
    TResult Function()? addToHistorySuccess,
    TResult Function(String errorMsg)? addToHistoryFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Addtohistorysuccess value) addToHistorySuccess,
    required TResult Function(_AddToHistoryFailure value) addToHistoryFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult? Function(_AddToHistoryFailure value)? addToHistoryFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult Function(_AddToHistoryFailure value)? addToHistoryFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SearchState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MovieEntity> movies});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$_Success(
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required final List<MovieEntity> movies})
      : _movies = movies;

  final List<MovieEntity> _movies;
  @override
  List<MovieEntity> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'SearchState.success(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(String errorMsg) failure,
    required TResult Function() addToHistorySuccess,
    required TResult Function(String errorMsg) addToHistoryFailure,
  }) {
    return success(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? success,
    TResult? Function(String errorMsg)? failure,
    TResult? Function()? addToHistorySuccess,
    TResult? Function(String errorMsg)? addToHistoryFailure,
  }) {
    return success?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(String errorMsg)? failure,
    TResult Function()? addToHistorySuccess,
    TResult Function(String errorMsg)? addToHistoryFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Addtohistorysuccess value) addToHistorySuccess,
    required TResult Function(_AddToHistoryFailure value) addToHistoryFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult? Function(_AddToHistoryFailure value)? addToHistoryFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult Function(_AddToHistoryFailure value)? addToHistoryFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SearchState {
  const factory _Success({required final List<MovieEntity> movies}) =
      _$_Success;

  List<MovieEntity> get movies;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$_Failure(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'SearchState.failure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(String errorMsg) failure,
    required TResult Function() addToHistorySuccess,
    required TResult Function(String errorMsg) addToHistoryFailure,
  }) {
    return failure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? success,
    TResult? Function(String errorMsg)? failure,
    TResult? Function()? addToHistorySuccess,
    TResult? Function(String errorMsg)? addToHistoryFailure,
  }) {
    return failure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(String errorMsg)? failure,
    TResult Function()? addToHistorySuccess,
    TResult Function(String errorMsg)? addToHistoryFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Addtohistorysuccess value) addToHistorySuccess,
    required TResult Function(_AddToHistoryFailure value) addToHistoryFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult? Function(_AddToHistoryFailure value)? addToHistoryFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult Function(_AddToHistoryFailure value)? addToHistoryFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SearchState {
  const factory _Failure({required final String errorMsg}) = _$_Failure;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddtohistorysuccessCopyWith<$Res> {
  factory _$$_AddtohistorysuccessCopyWith(_$_Addtohistorysuccess value,
          $Res Function(_$_Addtohistorysuccess) then) =
      __$$_AddtohistorysuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddtohistorysuccessCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_Addtohistorysuccess>
    implements _$$_AddtohistorysuccessCopyWith<$Res> {
  __$$_AddtohistorysuccessCopyWithImpl(_$_Addtohistorysuccess _value,
      $Res Function(_$_Addtohistorysuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Addtohistorysuccess implements _Addtohistorysuccess {
  const _$_Addtohistorysuccess();

  @override
  String toString() {
    return 'SearchState.addToHistorySuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Addtohistorysuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(String errorMsg) failure,
    required TResult Function() addToHistorySuccess,
    required TResult Function(String errorMsg) addToHistoryFailure,
  }) {
    return addToHistorySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? success,
    TResult? Function(String errorMsg)? failure,
    TResult? Function()? addToHistorySuccess,
    TResult? Function(String errorMsg)? addToHistoryFailure,
  }) {
    return addToHistorySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(String errorMsg)? failure,
    TResult Function()? addToHistorySuccess,
    TResult Function(String errorMsg)? addToHistoryFailure,
    required TResult orElse(),
  }) {
    if (addToHistorySuccess != null) {
      return addToHistorySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Addtohistorysuccess value) addToHistorySuccess,
    required TResult Function(_AddToHistoryFailure value) addToHistoryFailure,
  }) {
    return addToHistorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult? Function(_AddToHistoryFailure value)? addToHistoryFailure,
  }) {
    return addToHistorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult Function(_AddToHistoryFailure value)? addToHistoryFailure,
    required TResult orElse(),
  }) {
    if (addToHistorySuccess != null) {
      return addToHistorySuccess(this);
    }
    return orElse();
  }
}

abstract class _Addtohistorysuccess implements SearchState {
  const factory _Addtohistorysuccess() = _$_Addtohistorysuccess;
}

/// @nodoc
abstract class _$$_AddToHistoryFailureCopyWith<$Res> {
  factory _$$_AddToHistoryFailureCopyWith(_$_AddToHistoryFailure value,
          $Res Function(_$_AddToHistoryFailure) then) =
      __$$_AddToHistoryFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$_AddToHistoryFailureCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_AddToHistoryFailure>
    implements _$$_AddToHistoryFailureCopyWith<$Res> {
  __$$_AddToHistoryFailureCopyWithImpl(_$_AddToHistoryFailure _value,
      $Res Function(_$_AddToHistoryFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$_AddToHistoryFailure(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddToHistoryFailure implements _AddToHistoryFailure {
  const _$_AddToHistoryFailure({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'SearchState.addToHistoryFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToHistoryFailure &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToHistoryFailureCopyWith<_$_AddToHistoryFailure> get copyWith =>
      __$$_AddToHistoryFailureCopyWithImpl<_$_AddToHistoryFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MovieEntity> movies) success,
    required TResult Function(String errorMsg) failure,
    required TResult Function() addToHistorySuccess,
    required TResult Function(String errorMsg) addToHistoryFailure,
  }) {
    return addToHistoryFailure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MovieEntity> movies)? success,
    TResult? Function(String errorMsg)? failure,
    TResult? Function()? addToHistorySuccess,
    TResult? Function(String errorMsg)? addToHistoryFailure,
  }) {
    return addToHistoryFailure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MovieEntity> movies)? success,
    TResult Function(String errorMsg)? failure,
    TResult Function()? addToHistorySuccess,
    TResult Function(String errorMsg)? addToHistoryFailure,
    required TResult orElse(),
  }) {
    if (addToHistoryFailure != null) {
      return addToHistoryFailure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Addtohistorysuccess value) addToHistorySuccess,
    required TResult Function(_AddToHistoryFailure value) addToHistoryFailure,
  }) {
    return addToHistoryFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult? Function(_AddToHistoryFailure value)? addToHistoryFailure,
  }) {
    return addToHistoryFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Addtohistorysuccess value)? addToHistorySuccess,
    TResult Function(_AddToHistoryFailure value)? addToHistoryFailure,
    required TResult orElse(),
  }) {
    if (addToHistoryFailure != null) {
      return addToHistoryFailure(this);
    }
    return orElse();
  }
}

abstract class _AddToHistoryFailure implements SearchState {
  const factory _AddToHistoryFailure({required final String errorMsg}) =
      _$_AddToHistoryFailure;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$_AddToHistoryFailureCopyWith<_$_AddToHistoryFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
