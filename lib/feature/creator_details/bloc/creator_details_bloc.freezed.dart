// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creator_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatorDetailsEvent {
  Creator get creator => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Creator creator) onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Creator creator)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Creator creator)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorDetailsOnPageOpenedEvent value)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatorDetailsEventCopyWith<CreatorDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorDetailsEventCopyWith<$Res> {
  factory $CreatorDetailsEventCopyWith(
          CreatorDetailsEvent value, $Res Function(CreatorDetailsEvent) then) =
      _$CreatorDetailsEventCopyWithImpl<$Res, CreatorDetailsEvent>;
  @useResult
  $Res call({Creator creator});

  $CreatorCopyWith<$Res> get creator;
}

/// @nodoc
class _$CreatorDetailsEventCopyWithImpl<$Res, $Val extends CreatorDetailsEvent>
    implements $CreatorDetailsEventCopyWith<$Res> {
  _$CreatorDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = null,
  }) {
    return _then(_value.copyWith(
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Creator,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorCopyWith<$Res> get creator {
    return $CreatorCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreatorDetailsOnPageOpenedEventCopyWith<$Res>
    implements $CreatorDetailsEventCopyWith<$Res> {
  factory _$$_CreatorDetailsOnPageOpenedEventCopyWith(
          _$_CreatorDetailsOnPageOpenedEvent value,
          $Res Function(_$_CreatorDetailsOnPageOpenedEvent) then) =
      __$$_CreatorDetailsOnPageOpenedEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Creator creator});

  @override
  $CreatorCopyWith<$Res> get creator;
}

/// @nodoc
class __$$_CreatorDetailsOnPageOpenedEventCopyWithImpl<$Res>
    extends _$CreatorDetailsEventCopyWithImpl<$Res,
        _$_CreatorDetailsOnPageOpenedEvent>
    implements _$$_CreatorDetailsOnPageOpenedEventCopyWith<$Res> {
  __$$_CreatorDetailsOnPageOpenedEventCopyWithImpl(
      _$_CreatorDetailsOnPageOpenedEvent _value,
      $Res Function(_$_CreatorDetailsOnPageOpenedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creator = null,
  }) {
    return _then(_$_CreatorDetailsOnPageOpenedEvent(
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Creator,
    ));
  }
}

/// @nodoc

class _$_CreatorDetailsOnPageOpenedEvent
    implements _CreatorDetailsOnPageOpenedEvent {
  const _$_CreatorDetailsOnPageOpenedEvent({required this.creator});

  @override
  final Creator creator;

  @override
  String toString() {
    return 'CreatorDetailsEvent.onPageOpened(creator: $creator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorDetailsOnPageOpenedEvent &&
            (identical(other.creator, creator) || other.creator == creator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatorDetailsOnPageOpenedEventCopyWith<
          _$_CreatorDetailsOnPageOpenedEvent>
      get copyWith => __$$_CreatorDetailsOnPageOpenedEventCopyWithImpl<
          _$_CreatorDetailsOnPageOpenedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Creator creator) onPageOpened,
  }) {
    return onPageOpened(creator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Creator creator)? onPageOpened,
  }) {
    return onPageOpened?.call(creator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Creator creator)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(creator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorDetailsOnPageOpenedEvent value)? onPageOpened,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _CreatorDetailsOnPageOpenedEvent implements CreatorDetailsEvent {
  const factory _CreatorDetailsOnPageOpenedEvent(
      {required final Creator creator}) = _$_CreatorDetailsOnPageOpenedEvent;

  @override
  Creator get creator;
  @override
  @JsonKey(ignore: true)
  _$$_CreatorDetailsOnPageOpenedEventCopyWith<
          _$_CreatorDetailsOnPageOpenedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreatorDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Comic> creatorComics,
            List<Series> creatorSeries, List<Story> creatorStories)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Comic> creatorComics, List<Series> creatorSeries,
            List<Story> creatorStories)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Comic> creatorComics, List<Series> creatorSeries,
            List<Story> creatorStories)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorDetailsLoadingState value) loading,
    required TResult Function(_CreatorDetailsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorDetailsLoadingState value)? loading,
    TResult? Function(_CreatorDetailsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorDetailsLoadingState value)? loading,
    TResult Function(_CreatorDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorDetailsStateCopyWith<$Res> {
  factory $CreatorDetailsStateCopyWith(
          CreatorDetailsState value, $Res Function(CreatorDetailsState) then) =
      _$CreatorDetailsStateCopyWithImpl<$Res, CreatorDetailsState>;
}

/// @nodoc
class _$CreatorDetailsStateCopyWithImpl<$Res, $Val extends CreatorDetailsState>
    implements $CreatorDetailsStateCopyWith<$Res> {
  _$CreatorDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreatorDetailsLoadingStateCopyWith<$Res> {
  factory _$$_CreatorDetailsLoadingStateCopyWith(
          _$_CreatorDetailsLoadingState value,
          $Res Function(_$_CreatorDetailsLoadingState) then) =
      __$$_CreatorDetailsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreatorDetailsLoadingStateCopyWithImpl<$Res>
    extends _$CreatorDetailsStateCopyWithImpl<$Res,
        _$_CreatorDetailsLoadingState>
    implements _$$_CreatorDetailsLoadingStateCopyWith<$Res> {
  __$$_CreatorDetailsLoadingStateCopyWithImpl(
      _$_CreatorDetailsLoadingState _value,
      $Res Function(_$_CreatorDetailsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreatorDetailsLoadingState implements _CreatorDetailsLoadingState {
  const _$_CreatorDetailsLoadingState();

  @override
  String toString() {
    return 'CreatorDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorDetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Comic> creatorComics,
            List<Series> creatorSeries, List<Story> creatorStories)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Comic> creatorComics, List<Series> creatorSeries,
            List<Story> creatorStories)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Comic> creatorComics, List<Series> creatorSeries,
            List<Story> creatorStories)?
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
    required TResult Function(_CreatorDetailsLoadingState value) loading,
    required TResult Function(_CreatorDetailsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorDetailsLoadingState value)? loading,
    TResult? Function(_CreatorDetailsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorDetailsLoadingState value)? loading,
    TResult Function(_CreatorDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CreatorDetailsLoadingState implements CreatorDetailsState {
  const factory _CreatorDetailsLoadingState() = _$_CreatorDetailsLoadingState;
}

/// @nodoc
abstract class _$$_CreatorDetailsLoadedStateCopyWith<$Res> {
  factory _$$_CreatorDetailsLoadedStateCopyWith(
          _$_CreatorDetailsLoadedState value,
          $Res Function(_$_CreatorDetailsLoadedState) then) =
      __$$_CreatorDetailsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Comic> creatorComics,
      List<Series> creatorSeries,
      List<Story> creatorStories});
}

/// @nodoc
class __$$_CreatorDetailsLoadedStateCopyWithImpl<$Res>
    extends _$CreatorDetailsStateCopyWithImpl<$Res,
        _$_CreatorDetailsLoadedState>
    implements _$$_CreatorDetailsLoadedStateCopyWith<$Res> {
  __$$_CreatorDetailsLoadedStateCopyWithImpl(
      _$_CreatorDetailsLoadedState _value,
      $Res Function(_$_CreatorDetailsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creatorComics = null,
    Object? creatorSeries = null,
    Object? creatorStories = null,
  }) {
    return _then(_$_CreatorDetailsLoadedState(
      creatorComics: null == creatorComics
          ? _value._creatorComics
          : creatorComics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
      creatorSeries: null == creatorSeries
          ? _value._creatorSeries
          : creatorSeries // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      creatorStories: null == creatorStories
          ? _value._creatorStories
          : creatorStories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc

class _$_CreatorDetailsLoadedState implements _CreatorDetailsLoadedState {
  const _$_CreatorDetailsLoadedState(
      {required final List<Comic> creatorComics,
      required final List<Series> creatorSeries,
      required final List<Story> creatorStories})
      : _creatorComics = creatorComics,
        _creatorSeries = creatorSeries,
        _creatorStories = creatorStories;

  final List<Comic> _creatorComics;
  @override
  List<Comic> get creatorComics {
    if (_creatorComics is EqualUnmodifiableListView) return _creatorComics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creatorComics);
  }

  final List<Series> _creatorSeries;
  @override
  List<Series> get creatorSeries {
    if (_creatorSeries is EqualUnmodifiableListView) return _creatorSeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creatorSeries);
  }

  final List<Story> _creatorStories;
  @override
  List<Story> get creatorStories {
    if (_creatorStories is EqualUnmodifiableListView) return _creatorStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_creatorStories);
  }

  @override
  String toString() {
    return 'CreatorDetailsState.loaded(creatorComics: $creatorComics, creatorSeries: $creatorSeries, creatorStories: $creatorStories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatorDetailsLoadedState &&
            const DeepCollectionEquality()
                .equals(other._creatorComics, _creatorComics) &&
            const DeepCollectionEquality()
                .equals(other._creatorSeries, _creatorSeries) &&
            const DeepCollectionEquality()
                .equals(other._creatorStories, _creatorStories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_creatorComics),
      const DeepCollectionEquality().hash(_creatorSeries),
      const DeepCollectionEquality().hash(_creatorStories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatorDetailsLoadedStateCopyWith<_$_CreatorDetailsLoadedState>
      get copyWith => __$$_CreatorDetailsLoadedStateCopyWithImpl<
          _$_CreatorDetailsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Comic> creatorComics,
            List<Series> creatorSeries, List<Story> creatorStories)
        loaded,
  }) {
    return loaded(creatorComics, creatorSeries, creatorStories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Comic> creatorComics, List<Series> creatorSeries,
            List<Story> creatorStories)?
        loaded,
  }) {
    return loaded?.call(creatorComics, creatorSeries, creatorStories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Comic> creatorComics, List<Series> creatorSeries,
            List<Story> creatorStories)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(creatorComics, creatorSeries, creatorStories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatorDetailsLoadingState value) loading,
    required TResult Function(_CreatorDetailsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreatorDetailsLoadingState value)? loading,
    TResult? Function(_CreatorDetailsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatorDetailsLoadingState value)? loading,
    TResult Function(_CreatorDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CreatorDetailsLoadedState implements CreatorDetailsState {
  const factory _CreatorDetailsLoadedState(
          {required final List<Comic> creatorComics,
          required final List<Series> creatorSeries,
          required final List<Story> creatorStories}) =
      _$_CreatorDetailsLoadedState;

  List<Comic> get creatorComics;
  List<Series> get creatorSeries;
  List<Story> get creatorStories;
  @JsonKey(ignore: true)
  _$$_CreatorDetailsLoadedStateCopyWith<_$_CreatorDetailsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
