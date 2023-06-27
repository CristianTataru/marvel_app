// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Series series) onSeriesTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Series series)? onSeriesTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Series series)? onSeriesTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_SeriesMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_SeriesOnSeriesTappedEvent value) onSeriesTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_SeriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_SeriesOnSeriesTappedEvent value)? onSeriesTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_SeriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_SeriesOnSeriesTappedEvent value)? onSeriesTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesEventCopyWith<$Res> {
  factory $SeriesEventCopyWith(
          SeriesEvent value, $Res Function(SeriesEvent) then) =
      _$SeriesEventCopyWithImpl<$Res, SeriesEvent>;
}

/// @nodoc
class _$SeriesEventCopyWithImpl<$Res, $Val extends SeriesEvent>
    implements $SeriesEventCopyWith<$Res> {
  _$SeriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SeriesOnPageOpenedEventCopyWith<$Res> {
  factory _$$_SeriesOnPageOpenedEventCopyWith(_$_SeriesOnPageOpenedEvent value,
          $Res Function(_$_SeriesOnPageOpenedEvent) then) =
      __$$_SeriesOnPageOpenedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SeriesOnPageOpenedEventCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$_SeriesOnPageOpenedEvent>
    implements _$$_SeriesOnPageOpenedEventCopyWith<$Res> {
  __$$_SeriesOnPageOpenedEventCopyWithImpl(_$_SeriesOnPageOpenedEvent _value,
      $Res Function(_$_SeriesOnPageOpenedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SeriesOnPageOpenedEvent implements _SeriesOnPageOpenedEvent {
  const _$_SeriesOnPageOpenedEvent();

  @override
  String toString() {
    return 'SeriesEvent.onPageOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesOnPageOpenedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Series series) onSeriesTapped,
  }) {
    return onPageOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Series series)? onSeriesTapped,
  }) {
    return onPageOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Series series)? onSeriesTapped,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_SeriesMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_SeriesOnSeriesTappedEvent value) onSeriesTapped,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_SeriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_SeriesOnSeriesTappedEvent value)? onSeriesTapped,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_SeriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_SeriesOnSeriesTappedEvent value)? onSeriesTapped,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _SeriesOnPageOpenedEvent implements SeriesEvent {
  const factory _SeriesOnPageOpenedEvent() = _$_SeriesOnPageOpenedEvent;
}

/// @nodoc
abstract class _$$_SeriesMoreDataLoadingEventCopyWith<$Res> {
  factory _$$_SeriesMoreDataLoadingEventCopyWith(
          _$_SeriesMoreDataLoadingEvent value,
          $Res Function(_$_SeriesMoreDataLoadingEvent) then) =
      __$$_SeriesMoreDataLoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SeriesMoreDataLoadingEventCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$_SeriesMoreDataLoadingEvent>
    implements _$$_SeriesMoreDataLoadingEventCopyWith<$Res> {
  __$$_SeriesMoreDataLoadingEventCopyWithImpl(
      _$_SeriesMoreDataLoadingEvent _value,
      $Res Function(_$_SeriesMoreDataLoadingEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SeriesMoreDataLoadingEvent implements _SeriesMoreDataLoadingEvent {
  const _$_SeriesMoreDataLoadingEvent();

  @override
  String toString() {
    return 'SeriesEvent.onMoreDataLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesMoreDataLoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Series series) onSeriesTapped,
  }) {
    return onMoreDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Series series)? onSeriesTapped,
  }) {
    return onMoreDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Series series)? onSeriesTapped,
    required TResult orElse(),
  }) {
    if (onMoreDataLoading != null) {
      return onMoreDataLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_SeriesMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_SeriesOnSeriesTappedEvent value) onSeriesTapped,
  }) {
    return onMoreDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_SeriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_SeriesOnSeriesTappedEvent value)? onSeriesTapped,
  }) {
    return onMoreDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_SeriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_SeriesOnSeriesTappedEvent value)? onSeriesTapped,
    required TResult orElse(),
  }) {
    if (onMoreDataLoading != null) {
      return onMoreDataLoading(this);
    }
    return orElse();
  }
}

abstract class _SeriesMoreDataLoadingEvent implements SeriesEvent {
  const factory _SeriesMoreDataLoadingEvent() = _$_SeriesMoreDataLoadingEvent;
}

/// @nodoc
abstract class _$$_SeriesOnSeriesTappedEventCopyWith<$Res> {
  factory _$$_SeriesOnSeriesTappedEventCopyWith(
          _$_SeriesOnSeriesTappedEvent value,
          $Res Function(_$_SeriesOnSeriesTappedEvent) then) =
      __$$_SeriesOnSeriesTappedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Series series});

  $SeriesCopyWith<$Res> get series;
}

/// @nodoc
class __$$_SeriesOnSeriesTappedEventCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$_SeriesOnSeriesTappedEvent>
    implements _$$_SeriesOnSeriesTappedEventCopyWith<$Res> {
  __$$_SeriesOnSeriesTappedEventCopyWithImpl(
      _$_SeriesOnSeriesTappedEvent _value,
      $Res Function(_$_SeriesOnSeriesTappedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = null,
  }) {
    return _then(_$_SeriesOnSeriesTappedEvent(
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesCopyWith<$Res> get series {
    return $SeriesCopyWith<$Res>(_value.series, (value) {
      return _then(_value.copyWith(series: value));
    });
  }
}

/// @nodoc

class _$_SeriesOnSeriesTappedEvent implements _SeriesOnSeriesTappedEvent {
  const _$_SeriesOnSeriesTappedEvent({required this.series});

  @override
  final Series series;

  @override
  String toString() {
    return 'SeriesEvent.onSeriesTapped(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesOnSeriesTappedEvent &&
            (identical(other.series, series) || other.series == series));
  }

  @override
  int get hashCode => Object.hash(runtimeType, series);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeriesOnSeriesTappedEventCopyWith<_$_SeriesOnSeriesTappedEvent>
      get copyWith => __$$_SeriesOnSeriesTappedEventCopyWithImpl<
          _$_SeriesOnSeriesTappedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Series series) onSeriesTapped,
  }) {
    return onSeriesTapped(series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Series series)? onSeriesTapped,
  }) {
    return onSeriesTapped?.call(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Series series)? onSeriesTapped,
    required TResult orElse(),
  }) {
    if (onSeriesTapped != null) {
      return onSeriesTapped(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_SeriesMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_SeriesOnSeriesTappedEvent value) onSeriesTapped,
  }) {
    return onSeriesTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_SeriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_SeriesOnSeriesTappedEvent value)? onSeriesTapped,
  }) {
    return onSeriesTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_SeriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_SeriesOnSeriesTappedEvent value)? onSeriesTapped,
    required TResult orElse(),
  }) {
    if (onSeriesTapped != null) {
      return onSeriesTapped(this);
    }
    return orElse();
  }
}

abstract class _SeriesOnSeriesTappedEvent implements SeriesEvent {
  const factory _SeriesOnSeriesTappedEvent({required final Series series}) =
      _$_SeriesOnSeriesTappedEvent;

  Series get series;
  @JsonKey(ignore: true)
  _$$_SeriesOnSeriesTappedEventCopyWith<_$_SeriesOnSeriesTappedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SeriesState {
  List<Series> get series => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Series> series)
        loaded,
    required TResult Function(List<Series> series) moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool canLoadMore, int lastOffset, List<Series> series)?
        loaded,
    TResult? Function(List<Series> series)? moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canLoadMore, int lastOffset, List<Series> series)?
        loaded,
    TResult Function(List<Series> series)? moreLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesLoadedState value) loaded,
    required TResult Function(_SeriesMoreLoadingState value) moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesLoadedState value)? loaded,
    TResult? Function(_SeriesMoreLoadingState value)? moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesLoadedState value)? loaded,
    TResult Function(_SeriesMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeriesStateCopyWith<SeriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesStateCopyWith<$Res> {
  factory $SeriesStateCopyWith(
          SeriesState value, $Res Function(SeriesState) then) =
      _$SeriesStateCopyWithImpl<$Res, SeriesState>;
  @useResult
  $Res call({List<Series> series});
}

/// @nodoc
class _$SeriesStateCopyWithImpl<$Res, $Val extends SeriesState>
    implements $SeriesStateCopyWith<$Res> {
  _$SeriesStateCopyWithImpl(this._value, this._then);

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
              as List<Series>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeriesLoadedStateCopyWith<$Res>
    implements $SeriesStateCopyWith<$Res> {
  factory _$$_SeriesLoadedStateCopyWith(_$_SeriesLoadedState value,
          $Res Function(_$_SeriesLoadedState) then) =
      __$$_SeriesLoadedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool canLoadMore, int lastOffset, List<Series> series});
}

/// @nodoc
class __$$_SeriesLoadedStateCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$_SeriesLoadedState>
    implements _$$_SeriesLoadedStateCopyWith<$Res> {
  __$$_SeriesLoadedStateCopyWithImpl(
      _$_SeriesLoadedState _value, $Res Function(_$_SeriesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canLoadMore = null,
    Object? lastOffset = null,
    Object? series = null,
  }) {
    return _then(_$_SeriesLoadedState(
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      lastOffset: null == lastOffset
          ? _value.lastOffset
          : lastOffset // ignore: cast_nullable_to_non_nullable
              as int,
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Series>,
    ));
  }
}

/// @nodoc

class _$_SeriesLoadedState implements _SeriesLoadedState {
  const _$_SeriesLoadedState(
      {required this.canLoadMore,
      required this.lastOffset,
      required final List<Series> series})
      : _series = series;

  @override
  final bool canLoadMore;
  @override
  final int lastOffset;
  final List<Series> _series;
  @override
  List<Series> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  String toString() {
    return 'SeriesState.loaded(canLoadMore: $canLoadMore, lastOffset: $lastOffset, series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesLoadedState &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore) &&
            (identical(other.lastOffset, lastOffset) ||
                other.lastOffset == lastOffset) &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canLoadMore, lastOffset,
      const DeepCollectionEquality().hash(_series));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeriesLoadedStateCopyWith<_$_SeriesLoadedState> get copyWith =>
      __$$_SeriesLoadedStateCopyWithImpl<_$_SeriesLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Series> series)
        loaded,
    required TResult Function(List<Series> series) moreLoading,
  }) {
    return loaded(canLoadMore, lastOffset, series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool canLoadMore, int lastOffset, List<Series> series)?
        loaded,
    TResult? Function(List<Series> series)? moreLoading,
  }) {
    return loaded?.call(canLoadMore, lastOffset, series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canLoadMore, int lastOffset, List<Series> series)?
        loaded,
    TResult Function(List<Series> series)? moreLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(canLoadMore, lastOffset, series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesLoadedState value) loaded,
    required TResult Function(_SeriesMoreLoadingState value) moreLoading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesLoadedState value)? loaded,
    TResult? Function(_SeriesMoreLoadingState value)? moreLoading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesLoadedState value)? loaded,
    TResult Function(_SeriesMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SeriesLoadedState implements SeriesState {
  const factory _SeriesLoadedState(
      {required final bool canLoadMore,
      required final int lastOffset,
      required final List<Series> series}) = _$_SeriesLoadedState;

  bool get canLoadMore;
  int get lastOffset;
  @override
  List<Series> get series;
  @override
  @JsonKey(ignore: true)
  _$$_SeriesLoadedStateCopyWith<_$_SeriesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SeriesMoreLoadingStateCopyWith<$Res>
    implements $SeriesStateCopyWith<$Res> {
  factory _$$_SeriesMoreLoadingStateCopyWith(_$_SeriesMoreLoadingState value,
          $Res Function(_$_SeriesMoreLoadingState) then) =
      __$$_SeriesMoreLoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Series> series});
}

/// @nodoc
class __$$_SeriesMoreLoadingStateCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$_SeriesMoreLoadingState>
    implements _$$_SeriesMoreLoadingStateCopyWith<$Res> {
  __$$_SeriesMoreLoadingStateCopyWithImpl(_$_SeriesMoreLoadingState _value,
      $Res Function(_$_SeriesMoreLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = null,
  }) {
    return _then(_$_SeriesMoreLoadingState(
      series: null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Series>,
    ));
  }
}

/// @nodoc

class _$_SeriesMoreLoadingState implements _SeriesMoreLoadingState {
  const _$_SeriesMoreLoadingState({required final List<Series> series})
      : _series = series;

  final List<Series> _series;
  @override
  List<Series> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  String toString() {
    return 'SeriesState.moreLoading(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesMoreLoadingState &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_series));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeriesMoreLoadingStateCopyWith<_$_SeriesMoreLoadingState> get copyWith =>
      __$$_SeriesMoreLoadingStateCopyWithImpl<_$_SeriesMoreLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Series> series)
        loaded,
    required TResult Function(List<Series> series) moreLoading,
  }) {
    return moreLoading(series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool canLoadMore, int lastOffset, List<Series> series)?
        loaded,
    TResult? Function(List<Series> series)? moreLoading,
  }) {
    return moreLoading?.call(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canLoadMore, int lastOffset, List<Series> series)?
        loaded,
    TResult Function(List<Series> series)? moreLoading,
    required TResult orElse(),
  }) {
    if (moreLoading != null) {
      return moreLoading(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesLoadedState value) loaded,
    required TResult Function(_SeriesMoreLoadingState value) moreLoading,
  }) {
    return moreLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SeriesLoadedState value)? loaded,
    TResult? Function(_SeriesMoreLoadingState value)? moreLoading,
  }) {
    return moreLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesLoadedState value)? loaded,
    TResult Function(_SeriesMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (moreLoading != null) {
      return moreLoading(this);
    }
    return orElse();
  }
}

abstract class _SeriesMoreLoadingState implements SeriesState {
  const factory _SeriesMoreLoadingState({required final List<Series> series}) =
      _$_SeriesMoreLoadingState;

  @override
  List<Series> get series;
  @override
  @JsonKey(ignore: true)
  _$$_SeriesMoreLoadingStateCopyWith<_$_SeriesMoreLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
