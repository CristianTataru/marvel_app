// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creators_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatorsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFilter? filter) onPageOpened,
    required TResult Function(ApiFilter? filter) onMoreDataLoading,
    required TResult Function(Creator creator) onCreatorTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFilter? filter)? onPageOpened,
    TResult? Function(ApiFilter? filter)? onMoreDataLoading,
    TResult? Function(Creator creator)? onCreatorTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFilter? filter)? onPageOpened,
    TResult Function(ApiFilter? filter)? onMoreDataLoading,
    TResult Function(Creator creator)? onCreatorTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorsOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_CreatorsMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_CreatorsOnCreatorTappedEvent value)
        onCreatorTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CreatorsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_CreatorsOnCreatorTappedEvent value)? onCreatorTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CreatorsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_CreatorsOnCreatorTappedEvent value)? onCreatorTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorsEventCopyWith<$Res> {
  factory $CreatorsEventCopyWith(
          CreatorsEvent value, $Res Function(CreatorsEvent) then) =
      _$CreatorsEventCopyWithImpl<$Res, CreatorsEvent>;
}

/// @nodoc
class _$CreatorsEventCopyWithImpl<$Res, $Val extends CreatorsEvent>
    implements $CreatorsEventCopyWith<$Res> {
  _$CreatorsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreatorsOnPageOpenedEventCopyWith<$Res> {
  factory _$$_CreatorsOnPageOpenedEventCopyWith(
          _$_CreatorsOnPageOpenedEvent value,
          $Res Function(_$_CreatorsOnPageOpenedEvent) then) =
      __$$_CreatorsOnPageOpenedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFilter? filter});
}

/// @nodoc
class __$$_CreatorsOnPageOpenedEventCopyWithImpl<$Res>
    extends _$CreatorsEventCopyWithImpl<$Res, _$_CreatorsOnPageOpenedEvent>
    implements _$$_CreatorsOnPageOpenedEventCopyWith<$Res> {
  __$$_CreatorsOnPageOpenedEventCopyWithImpl(
      _$_CreatorsOnPageOpenedEvent _value,
      $Res Function(_$_CreatorsOnPageOpenedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$_CreatorsOnPageOpenedEvent(
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ApiFilter?,
    ));
  }
}

/// @nodoc

class _$_CreatorsOnPageOpenedEvent implements _CreatorsOnPageOpenedEvent {
  const _$_CreatorsOnPageOpenedEvent({required this.filter});

  @override
  final ApiFilter? filter;

  @override
  String toString() {
    return 'CreatorsEvent.onPageOpened(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorsOnPageOpenedEvent &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatorsOnPageOpenedEventCopyWith<_$_CreatorsOnPageOpenedEvent>
      get copyWith => __$$_CreatorsOnPageOpenedEventCopyWithImpl<
          _$_CreatorsOnPageOpenedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFilter? filter) onPageOpened,
    required TResult Function(ApiFilter? filter) onMoreDataLoading,
    required TResult Function(Creator creator) onCreatorTapped,
  }) {
    return onPageOpened(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFilter? filter)? onPageOpened,
    TResult? Function(ApiFilter? filter)? onMoreDataLoading,
    TResult? Function(Creator creator)? onCreatorTapped,
  }) {
    return onPageOpened?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFilter? filter)? onPageOpened,
    TResult Function(ApiFilter? filter)? onMoreDataLoading,
    TResult Function(Creator creator)? onCreatorTapped,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorsOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_CreatorsMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_CreatorsOnCreatorTappedEvent value)
        onCreatorTapped,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CreatorsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_CreatorsOnCreatorTappedEvent value)? onCreatorTapped,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CreatorsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_CreatorsOnCreatorTappedEvent value)? onCreatorTapped,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _CreatorsOnPageOpenedEvent implements CreatorsEvent {
  const factory _CreatorsOnPageOpenedEvent({required final ApiFilter? filter}) =
      _$_CreatorsOnPageOpenedEvent;

  ApiFilter? get filter;
  @JsonKey(ignore: true)
  _$$_CreatorsOnPageOpenedEventCopyWith<_$_CreatorsOnPageOpenedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreatorsMoreDataLoadingEventCopyWith<$Res> {
  factory _$$_CreatorsMoreDataLoadingEventCopyWith(
          _$_CreatorsMoreDataLoadingEvent value,
          $Res Function(_$_CreatorsMoreDataLoadingEvent) then) =
      __$$_CreatorsMoreDataLoadingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFilter? filter});
}

/// @nodoc
class __$$_CreatorsMoreDataLoadingEventCopyWithImpl<$Res>
    extends _$CreatorsEventCopyWithImpl<$Res, _$_CreatorsMoreDataLoadingEvent>
    implements _$$_CreatorsMoreDataLoadingEventCopyWith<$Res> {
  __$$_CreatorsMoreDataLoadingEventCopyWithImpl(
      _$_CreatorsMoreDataLoadingEvent _value,
      $Res Function(_$_CreatorsMoreDataLoadingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$_CreatorsMoreDataLoadingEvent(
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ApiFilter?,
    ));
  }
}

/// @nodoc

class _$_CreatorsMoreDataLoadingEvent implements _CreatorsMoreDataLoadingEvent {
  const _$_CreatorsMoreDataLoadingEvent({required this.filter});

  @override
  final ApiFilter? filter;

  @override
  String toString() {
    return 'CreatorsEvent.onMoreDataLoading(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorsMoreDataLoadingEvent &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatorsMoreDataLoadingEventCopyWith<_$_CreatorsMoreDataLoadingEvent>
      get copyWith => __$$_CreatorsMoreDataLoadingEventCopyWithImpl<
          _$_CreatorsMoreDataLoadingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFilter? filter) onPageOpened,
    required TResult Function(ApiFilter? filter) onMoreDataLoading,
    required TResult Function(Creator creator) onCreatorTapped,
  }) {
    return onMoreDataLoading(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFilter? filter)? onPageOpened,
    TResult? Function(ApiFilter? filter)? onMoreDataLoading,
    TResult? Function(Creator creator)? onCreatorTapped,
  }) {
    return onMoreDataLoading?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFilter? filter)? onPageOpened,
    TResult Function(ApiFilter? filter)? onMoreDataLoading,
    TResult Function(Creator creator)? onCreatorTapped,
    required TResult orElse(),
  }) {
    if (onMoreDataLoading != null) {
      return onMoreDataLoading(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorsOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_CreatorsMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_CreatorsOnCreatorTappedEvent value)
        onCreatorTapped,
  }) {
    return onMoreDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CreatorsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_CreatorsOnCreatorTappedEvent value)? onCreatorTapped,
  }) {
    return onMoreDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CreatorsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_CreatorsOnCreatorTappedEvent value)? onCreatorTapped,
    required TResult orElse(),
  }) {
    if (onMoreDataLoading != null) {
      return onMoreDataLoading(this);
    }
    return orElse();
  }
}

abstract class _CreatorsMoreDataLoadingEvent implements CreatorsEvent {
  const factory _CreatorsMoreDataLoadingEvent(
      {required final ApiFilter? filter}) = _$_CreatorsMoreDataLoadingEvent;

  ApiFilter? get filter;
  @JsonKey(ignore: true)
  _$$_CreatorsMoreDataLoadingEventCopyWith<_$_CreatorsMoreDataLoadingEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreatorsOnCreatorTappedEventCopyWith<$Res> {
  factory _$$_CreatorsOnCreatorTappedEventCopyWith(
          _$_CreatorsOnCreatorTappedEvent value,
          $Res Function(_$_CreatorsOnCreatorTappedEvent) then) =
      __$$_CreatorsOnCreatorTappedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Creator creator});

  $CreatorCopyWith<$Res> get creator;
}

/// @nodoc
class __$$_CreatorsOnCreatorTappedEventCopyWithImpl<$Res>
    extends _$CreatorsEventCopyWithImpl<$Res, _$_CreatorsOnCreatorTappedEvent>
    implements _$$_CreatorsOnCreatorTappedEventCopyWith<$Res> {
  __$$_CreatorsOnCreatorTappedEventCopyWithImpl(
      _$_CreatorsOnCreatorTappedEvent _value,
      $Res Function(_$_CreatorsOnCreatorTappedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = null,
  }) {
    return _then(_$_CreatorsOnCreatorTappedEvent(
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Creator,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorCopyWith<$Res> get creator {
    return $CreatorCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }
}

/// @nodoc

class _$_CreatorsOnCreatorTappedEvent implements _CreatorsOnCreatorTappedEvent {
  const _$_CreatorsOnCreatorTappedEvent({required this.creator});

  @override
  final Creator creator;

  @override
  String toString() {
    return 'CreatorsEvent.onCreatorTapped(creator: $creator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorsOnCreatorTappedEvent &&
            (identical(other.creator, creator) || other.creator == creator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatorsOnCreatorTappedEventCopyWith<_$_CreatorsOnCreatorTappedEvent>
      get copyWith => __$$_CreatorsOnCreatorTappedEventCopyWithImpl<
          _$_CreatorsOnCreatorTappedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFilter? filter) onPageOpened,
    required TResult Function(ApiFilter? filter) onMoreDataLoading,
    required TResult Function(Creator creator) onCreatorTapped,
  }) {
    return onCreatorTapped(creator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFilter? filter)? onPageOpened,
    TResult? Function(ApiFilter? filter)? onMoreDataLoading,
    TResult? Function(Creator creator)? onCreatorTapped,
  }) {
    return onCreatorTapped?.call(creator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFilter? filter)? onPageOpened,
    TResult Function(ApiFilter? filter)? onMoreDataLoading,
    TResult Function(Creator creator)? onCreatorTapped,
    required TResult orElse(),
  }) {
    if (onCreatorTapped != null) {
      return onCreatorTapped(creator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorsOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_CreatorsMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_CreatorsOnCreatorTappedEvent value)
        onCreatorTapped,
  }) {
    return onCreatorTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CreatorsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_CreatorsOnCreatorTappedEvent value)? onCreatorTapped,
  }) {
    return onCreatorTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CreatorsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_CreatorsOnCreatorTappedEvent value)? onCreatorTapped,
    required TResult orElse(),
  }) {
    if (onCreatorTapped != null) {
      return onCreatorTapped(this);
    }
    return orElse();
  }
}

abstract class _CreatorsOnCreatorTappedEvent implements CreatorsEvent {
  const factory _CreatorsOnCreatorTappedEvent(
      {required final Creator creator}) = _$_CreatorsOnCreatorTappedEvent;

  Creator get creator;
  @JsonKey(ignore: true)
  _$$_CreatorsOnCreatorTappedEventCopyWith<_$_CreatorsOnCreatorTappedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatorsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Creator> creators)
        loaded,
    required TResult Function(List<Creator> creators) moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool canLoadMore, int lastOffset, List<Creator> creators)?
        loaded,
    TResult? Function(List<Creator> creators)? moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool canLoadMore, int lastOffset, List<Creator> creators)?
        loaded,
    TResult Function(List<Creator> creators)? moreLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorsLoadingState value) loading,
    required TResult Function(_CreatorsLoadedState value) loaded,
    required TResult Function(_CreatorsMoreLoadingState value) moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorsLoadingState value)? loading,
    TResult? Function(_CreatorsLoadedState value)? loaded,
    TResult? Function(_CreatorsMoreLoadingState value)? moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorsLoadingState value)? loading,
    TResult Function(_CreatorsLoadedState value)? loaded,
    TResult Function(_CreatorsMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorsStateCopyWith<$Res> {
  factory $CreatorsStateCopyWith(
          CreatorsState value, $Res Function(CreatorsState) then) =
      _$CreatorsStateCopyWithImpl<$Res, CreatorsState>;
}

/// @nodoc
class _$CreatorsStateCopyWithImpl<$Res, $Val extends CreatorsState>
    implements $CreatorsStateCopyWith<$Res> {
  _$CreatorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreatorsLoadingStateCopyWith<$Res> {
  factory _$$_CreatorsLoadingStateCopyWith(_$_CreatorsLoadingState value,
          $Res Function(_$_CreatorsLoadingState) then) =
      __$$_CreatorsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreatorsLoadingStateCopyWithImpl<$Res>
    extends _$CreatorsStateCopyWithImpl<$Res, _$_CreatorsLoadingState>
    implements _$$_CreatorsLoadingStateCopyWith<$Res> {
  __$$_CreatorsLoadingStateCopyWithImpl(_$_CreatorsLoadingState _value,
      $Res Function(_$_CreatorsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreatorsLoadingState implements _CreatorsLoadingState {
  const _$_CreatorsLoadingState();

  @override
  String toString() {
    return 'CreatorsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreatorsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Creator> creators)
        loaded,
    required TResult Function(List<Creator> creators) moreLoading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool canLoadMore, int lastOffset, List<Creator> creators)?
        loaded,
    TResult? Function(List<Creator> creators)? moreLoading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool canLoadMore, int lastOffset, List<Creator> creators)?
        loaded,
    TResult Function(List<Creator> creators)? moreLoading,
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
    required TResult Function(_CreatorsLoadingState value) loading,
    required TResult Function(_CreatorsLoadedState value) loaded,
    required TResult Function(_CreatorsMoreLoadingState value) moreLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorsLoadingState value)? loading,
    TResult? Function(_CreatorsLoadedState value)? loaded,
    TResult? Function(_CreatorsMoreLoadingState value)? moreLoading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorsLoadingState value)? loading,
    TResult Function(_CreatorsLoadedState value)? loaded,
    TResult Function(_CreatorsMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CreatorsLoadingState implements CreatorsState {
  const factory _CreatorsLoadingState() = _$_CreatorsLoadingState;
}

/// @nodoc
abstract class _$$_CreatorsLoadedStateCopyWith<$Res> {
  factory _$$_CreatorsLoadedStateCopyWith(_$_CreatorsLoadedState value,
          $Res Function(_$_CreatorsLoadedState) then) =
      __$$_CreatorsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool canLoadMore, int lastOffset, List<Creator> creators});
}

/// @nodoc
class __$$_CreatorsLoadedStateCopyWithImpl<$Res>
    extends _$CreatorsStateCopyWithImpl<$Res, _$_CreatorsLoadedState>
    implements _$$_CreatorsLoadedStateCopyWith<$Res> {
  __$$_CreatorsLoadedStateCopyWithImpl(_$_CreatorsLoadedState _value,
      $Res Function(_$_CreatorsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canLoadMore = null,
    Object? lastOffset = null,
    Object? creators = null,
  }) {
    return _then(_$_CreatorsLoadedState(
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      lastOffset: null == lastOffset
          ? _value.lastOffset
          : lastOffset // ignore: cast_nullable_to_non_nullable
              as int,
      creators: null == creators
          ? _value._creators
          : creators // ignore: cast_nullable_to_non_nullable
              as List<Creator>,
    ));
  }
}

/// @nodoc

class _$_CreatorsLoadedState implements _CreatorsLoadedState {
  const _$_CreatorsLoadedState(
      {required this.canLoadMore,
      required this.lastOffset,
      required final List<Creator> creators})
      : _creators = creators;

  @override
  final bool canLoadMore;
  @override
  final int lastOffset;
  final List<Creator> _creators;
  @override
  List<Creator> get creators {
    if (_creators is EqualUnmodifiableListView) return _creators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creators);
  }

  @override
  String toString() {
    return 'CreatorsState.loaded(canLoadMore: $canLoadMore, lastOffset: $lastOffset, creators: $creators)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorsLoadedState &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore) &&
            (identical(other.lastOffset, lastOffset) ||
                other.lastOffset == lastOffset) &&
            const DeepCollectionEquality().equals(other._creators, _creators));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canLoadMore, lastOffset,
      const DeepCollectionEquality().hash(_creators));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatorsLoadedStateCopyWith<_$_CreatorsLoadedState> get copyWith =>
      __$$_CreatorsLoadedStateCopyWithImpl<_$_CreatorsLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Creator> creators)
        loaded,
    required TResult Function(List<Creator> creators) moreLoading,
  }) {
    return loaded(canLoadMore, lastOffset, creators);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool canLoadMore, int lastOffset, List<Creator> creators)?
        loaded,
    TResult? Function(List<Creator> creators)? moreLoading,
  }) {
    return loaded?.call(canLoadMore, lastOffset, creators);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool canLoadMore, int lastOffset, List<Creator> creators)?
        loaded,
    TResult Function(List<Creator> creators)? moreLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(canLoadMore, lastOffset, creators);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorsLoadingState value) loading,
    required TResult Function(_CreatorsLoadedState value) loaded,
    required TResult Function(_CreatorsMoreLoadingState value) moreLoading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorsLoadingState value)? loading,
    TResult? Function(_CreatorsLoadedState value)? loaded,
    TResult? Function(_CreatorsMoreLoadingState value)? moreLoading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorsLoadingState value)? loading,
    TResult Function(_CreatorsLoadedState value)? loaded,
    TResult Function(_CreatorsMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CreatorsLoadedState implements CreatorsState {
  const factory _CreatorsLoadedState(
      {required final bool canLoadMore,
      required final int lastOffset,
      required final List<Creator> creators}) = _$_CreatorsLoadedState;

  bool get canLoadMore;
  int get lastOffset;
  List<Creator> get creators;
  @JsonKey(ignore: true)
  _$$_CreatorsLoadedStateCopyWith<_$_CreatorsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreatorsMoreLoadingStateCopyWith<$Res> {
  factory _$$_CreatorsMoreLoadingStateCopyWith(
          _$_CreatorsMoreLoadingState value,
          $Res Function(_$_CreatorsMoreLoadingState) then) =
      __$$_CreatorsMoreLoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Creator> creators});
}

/// @nodoc
class __$$_CreatorsMoreLoadingStateCopyWithImpl<$Res>
    extends _$CreatorsStateCopyWithImpl<$Res, _$_CreatorsMoreLoadingState>
    implements _$$_CreatorsMoreLoadingStateCopyWith<$Res> {
  __$$_CreatorsMoreLoadingStateCopyWithImpl(_$_CreatorsMoreLoadingState _value,
      $Res Function(_$_CreatorsMoreLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creators = null,
  }) {
    return _then(_$_CreatorsMoreLoadingState(
      creators: null == creators
          ? _value._creators
          : creators // ignore: cast_nullable_to_non_nullable
              as List<Creator>,
    ));
  }
}

/// @nodoc

class _$_CreatorsMoreLoadingState implements _CreatorsMoreLoadingState {
  const _$_CreatorsMoreLoadingState({required final List<Creator> creators})
      : _creators = creators;

  final List<Creator> _creators;
  @override
  List<Creator> get creators {
    if (_creators is EqualUnmodifiableListView) return _creators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creators);
  }

  @override
  String toString() {
    return 'CreatorsState.moreLoading(creators: $creators)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorsMoreLoadingState &&
            const DeepCollectionEquality().equals(other._creators, _creators));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_creators));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatorsMoreLoadingStateCopyWith<_$_CreatorsMoreLoadingState>
      get copyWith => __$$_CreatorsMoreLoadingStateCopyWithImpl<
          _$_CreatorsMoreLoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Creator> creators)
        loaded,
    required TResult Function(List<Creator> creators) moreLoading,
  }) {
    return moreLoading(creators);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool canLoadMore, int lastOffset, List<Creator> creators)?
        loaded,
    TResult? Function(List<Creator> creators)? moreLoading,
  }) {
    return moreLoading?.call(creators);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool canLoadMore, int lastOffset, List<Creator> creators)?
        loaded,
    TResult Function(List<Creator> creators)? moreLoading,
    required TResult orElse(),
  }) {
    if (moreLoading != null) {
      return moreLoading(creators);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorsLoadingState value) loading,
    required TResult Function(_CreatorsLoadedState value) loaded,
    required TResult Function(_CreatorsMoreLoadingState value) moreLoading,
  }) {
    return moreLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorsLoadingState value)? loading,
    TResult? Function(_CreatorsLoadedState value)? loaded,
    TResult? Function(_CreatorsMoreLoadingState value)? moreLoading,
  }) {
    return moreLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorsLoadingState value)? loading,
    TResult Function(_CreatorsLoadedState value)? loaded,
    TResult Function(_CreatorsMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (moreLoading != null) {
      return moreLoading(this);
    }
    return orElse();
  }
}

abstract class _CreatorsMoreLoadingState implements CreatorsState {
  const factory _CreatorsMoreLoadingState(
      {required final List<Creator> creators}) = _$_CreatorsMoreLoadingState;

  List<Creator> get creators;
  @JsonKey(ignore: true)
  _$$_CreatorsMoreLoadingStateCopyWith<_$_CreatorsMoreLoadingState>
      get copyWith => throw _privateConstructorUsedError;
}
