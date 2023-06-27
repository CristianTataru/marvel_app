// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeriesDetailsEvent {
  Series get series => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Series series) onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Series series)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Series series)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesDetailsOnPageOpenedEvent value)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeriesDetailsEventCopyWith<SeriesDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesDetailsEventCopyWith<$Res> {
  factory $SeriesDetailsEventCopyWith(
          SeriesDetailsEvent value, $Res Function(SeriesDetailsEvent) then) =
      _$SeriesDetailsEventCopyWithImpl<$Res, SeriesDetailsEvent>;
  @useResult
  $Res call({Series series});

  $SeriesCopyWith<$Res> get series;
}

/// @nodoc
class _$SeriesDetailsEventCopyWithImpl<$Res, $Val extends SeriesDetailsEvent>
    implements $SeriesDetailsEventCopyWith<$Res> {
  _$SeriesDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = null,
  }) {
    return _then(_value.copyWith(
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesCopyWith<$Res> get series {
    return $SeriesCopyWith<$Res>(_value.series, (value) {
      return _then(_value.copyWith(series: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SeriesDetailsOnPageOpenedEventCopyWith<$Res>
    implements $SeriesDetailsEventCopyWith<$Res> {
  factory _$$_SeriesDetailsOnPageOpenedEventCopyWith(
          _$_SeriesDetailsOnPageOpenedEvent value,
          $Res Function(_$_SeriesDetailsOnPageOpenedEvent) then) =
      __$$_SeriesDetailsOnPageOpenedEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Series series});

  @override
  $SeriesCopyWith<$Res> get series;
}

/// @nodoc
class __$$_SeriesDetailsOnPageOpenedEventCopyWithImpl<$Res>
    extends _$SeriesDetailsEventCopyWithImpl<$Res,
        _$_SeriesDetailsOnPageOpenedEvent>
    implements _$$_SeriesDetailsOnPageOpenedEventCopyWith<$Res> {
  __$$_SeriesDetailsOnPageOpenedEventCopyWithImpl(
      _$_SeriesDetailsOnPageOpenedEvent _value,
      $Res Function(_$_SeriesDetailsOnPageOpenedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = null,
  }) {
    return _then(_$_SeriesDetailsOnPageOpenedEvent(
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series,
    ));
  }
}

/// @nodoc

class _$_SeriesDetailsOnPageOpenedEvent
    implements _SeriesDetailsOnPageOpenedEvent {
  const _$_SeriesDetailsOnPageOpenedEvent({required this.series});

  @override
  final Series series;

  @override
  String toString() {
    return 'SeriesDetailsEvent.onPageOpened(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesDetailsOnPageOpenedEvent &&
            (identical(other.series, series) || other.series == series));
  }

  @override
  int get hashCode => Object.hash(runtimeType, series);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeriesDetailsOnPageOpenedEventCopyWith<_$_SeriesDetailsOnPageOpenedEvent>
      get copyWith => __$$_SeriesDetailsOnPageOpenedEventCopyWithImpl<
          _$_SeriesDetailsOnPageOpenedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Series series) onPageOpened,
  }) {
    return onPageOpened(series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Series series)? onPageOpened,
  }) {
    return onPageOpened?.call(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Series series)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesDetailsOnPageOpenedEvent value)? onPageOpened,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _SeriesDetailsOnPageOpenedEvent implements SeriesDetailsEvent {
  const factory _SeriesDetailsOnPageOpenedEvent(
      {required final Series series}) = _$_SeriesDetailsOnPageOpenedEvent;

  @override
  Series get series;
  @override
  @JsonKey(ignore: true)
  _$$_SeriesDetailsOnPageOpenedEventCopyWith<_$_SeriesDetailsOnPageOpenedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SeriesDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Character> seriesCharacters,
            List<Comic> seriesComics,
            List<Story> seriesStories,
            List<Creator> seriesCreators)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Character> seriesCharacters,
            List<Comic> seriesComics,
            List<Story> seriesStories,
            List<Creator> seriesCreators)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> seriesCharacters, List<Comic> seriesComics,
            List<Story> seriesStories, List<Creator> seriesCreators)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesDetailsLoadingState value) loading,
    required TResult Function(_SeriesDetailsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesDetailsLoadingState value)? loading,
    TResult? Function(_SeriesDetailsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesDetailsLoadingState value)? loading,
    TResult Function(_SeriesDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesDetailsStateCopyWith<$Res> {
  factory $SeriesDetailsStateCopyWith(
          SeriesDetailsState value, $Res Function(SeriesDetailsState) then) =
      _$SeriesDetailsStateCopyWithImpl<$Res, SeriesDetailsState>;
}

/// @nodoc
class _$SeriesDetailsStateCopyWithImpl<$Res, $Val extends SeriesDetailsState>
    implements $SeriesDetailsStateCopyWith<$Res> {
  _$SeriesDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SeriesDetailsLoadingStateCopyWith<$Res> {
  factory _$$_SeriesDetailsLoadingStateCopyWith(
          _$_SeriesDetailsLoadingState value,
          $Res Function(_$_SeriesDetailsLoadingState) then) =
      __$$_SeriesDetailsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SeriesDetailsLoadingStateCopyWithImpl<$Res>
    extends _$SeriesDetailsStateCopyWithImpl<$Res, _$_SeriesDetailsLoadingState>
    implements _$$_SeriesDetailsLoadingStateCopyWith<$Res> {
  __$$_SeriesDetailsLoadingStateCopyWithImpl(
      _$_SeriesDetailsLoadingState _value,
      $Res Function(_$_SeriesDetailsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SeriesDetailsLoadingState implements _SeriesDetailsLoadingState {
  const _$_SeriesDetailsLoadingState();

  @override
  String toString() {
    return 'SeriesDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesDetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Character> seriesCharacters,
            List<Comic> seriesComics,
            List<Story> seriesStories,
            List<Creator> seriesCreators)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Character> seriesCharacters,
            List<Comic> seriesComics,
            List<Story> seriesStories,
            List<Creator> seriesCreators)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> seriesCharacters, List<Comic> seriesComics,
            List<Story> seriesStories, List<Creator> seriesCreators)?
        loaded,
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
    required TResult Function(_SeriesDetailsLoadingState value) loading,
    required TResult Function(_SeriesDetailsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesDetailsLoadingState value)? loading,
    TResult? Function(_SeriesDetailsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesDetailsLoadingState value)? loading,
    TResult Function(_SeriesDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SeriesDetailsLoadingState implements SeriesDetailsState {
  const factory _SeriesDetailsLoadingState() = _$_SeriesDetailsLoadingState;
}

/// @nodoc
abstract class _$$_SeriesDetailsLoadedStateCopyWith<$Res> {
  factory _$$_SeriesDetailsLoadedStateCopyWith(
          _$_SeriesDetailsLoadedState value,
          $Res Function(_$_SeriesDetailsLoadedState) then) =
      __$$_SeriesDetailsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Character> seriesCharacters,
      List<Comic> seriesComics,
      List<Story> seriesStories,
      List<Creator> seriesCreators});
}

/// @nodoc
class __$$_SeriesDetailsLoadedStateCopyWithImpl<$Res>
    extends _$SeriesDetailsStateCopyWithImpl<$Res, _$_SeriesDetailsLoadedState>
    implements _$$_SeriesDetailsLoadedStateCopyWith<$Res> {
  __$$_SeriesDetailsLoadedStateCopyWithImpl(_$_SeriesDetailsLoadedState _value,
      $Res Function(_$_SeriesDetailsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seriesCharacters = null,
    Object? seriesComics = null,
    Object? seriesStories = null,
    Object? seriesCreators = null,
  }) {
    return _then(_$_SeriesDetailsLoadedState(
      seriesCharacters: null == seriesCharacters
          ? _value._seriesCharacters
          : seriesCharacters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      seriesComics: null == seriesComics
          ? _value._seriesComics
          : seriesComics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
      seriesStories: null == seriesStories
          ? _value._seriesStories
          : seriesStories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
      seriesCreators: null == seriesCreators
          ? _value._seriesCreators
          : seriesCreators // ignore: cast_nullable_to_non_nullable
              as List<Creator>,
    ));
  }
}

/// @nodoc

class _$_SeriesDetailsLoadedState implements _SeriesDetailsLoadedState {
  const _$_SeriesDetailsLoadedState(
      {required final List<Character> seriesCharacters,
      required final List<Comic> seriesComics,
      required final List<Story> seriesStories,
      required final List<Creator> seriesCreators})
      : _seriesCharacters = seriesCharacters,
        _seriesComics = seriesComics,
        _seriesStories = seriesStories,
        _seriesCreators = seriesCreators;

  final List<Character> _seriesCharacters;
  @override
  List<Character> get seriesCharacters {
    if (_seriesCharacters is EqualUnmodifiableListView)
      return _seriesCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seriesCharacters);
  }

  final List<Comic> _seriesComics;
  @override
  List<Comic> get seriesComics {
    if (_seriesComics is EqualUnmodifiableListView) return _seriesComics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seriesComics);
  }

  final List<Story> _seriesStories;
  @override
  List<Story> get seriesStories {
    if (_seriesStories is EqualUnmodifiableListView) return _seriesStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seriesStories);
  }

  final List<Creator> _seriesCreators;
  @override
  List<Creator> get seriesCreators {
    if (_seriesCreators is EqualUnmodifiableListView) return _seriesCreators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seriesCreators);
  }

  @override
  String toString() {
    return 'SeriesDetailsState.loaded(seriesCharacters: $seriesCharacters, seriesComics: $seriesComics, seriesStories: $seriesStories, seriesCreators: $seriesCreators)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesDetailsLoadedState &&
            const DeepCollectionEquality()
                .equals(other._seriesCharacters, _seriesCharacters) &&
            const DeepCollectionEquality()
                .equals(other._seriesComics, _seriesComics) &&
            const DeepCollectionEquality()
                .equals(other._seriesStories, _seriesStories) &&
            const DeepCollectionEquality()
                .equals(other._seriesCreators, _seriesCreators));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_seriesCharacters),
      const DeepCollectionEquality().hash(_seriesComics),
      const DeepCollectionEquality().hash(_seriesStories),
      const DeepCollectionEquality().hash(_seriesCreators));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeriesDetailsLoadedStateCopyWith<_$_SeriesDetailsLoadedState>
      get copyWith => __$$_SeriesDetailsLoadedStateCopyWithImpl<
          _$_SeriesDetailsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Character> seriesCharacters,
            List<Comic> seriesComics,
            List<Story> seriesStories,
            List<Creator> seriesCreators)
        loaded,
  }) {
    return loaded(
        seriesCharacters, seriesComics, seriesStories, seriesCreators);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Character> seriesCharacters,
            List<Comic> seriesComics,
            List<Story> seriesStories,
            List<Creator> seriesCreators)?
        loaded,
  }) {
    return loaded?.call(
        seriesCharacters, seriesComics, seriesStories, seriesCreators);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> seriesCharacters, List<Comic> seriesComics,
            List<Story> seriesStories, List<Creator> seriesCreators)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          seriesCharacters, seriesComics, seriesStories, seriesCreators);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesDetailsLoadingState value) loading,
    required TResult Function(_SeriesDetailsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesDetailsLoadingState value)? loading,
    TResult? Function(_SeriesDetailsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesDetailsLoadingState value)? loading,
    TResult Function(_SeriesDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SeriesDetailsLoadedState implements SeriesDetailsState {
  const factory _SeriesDetailsLoadedState(
          {required final List<Character> seriesCharacters,
          required final List<Comic> seriesComics,
          required final List<Story> seriesStories,
          required final List<Creator> seriesCreators}) =
      _$_SeriesDetailsLoadedState;

  List<Character> get seriesCharacters;
  List<Comic> get seriesComics;
  List<Story> get seriesStories;
  List<Creator> get seriesCreators;
  @JsonKey(ignore: true)
  _$$_SeriesDetailsLoadedStateCopyWith<_$_SeriesDetailsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
