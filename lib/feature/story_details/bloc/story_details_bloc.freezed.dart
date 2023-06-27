// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoryDetailsEvent {
  Story get story => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Story story) onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Story story)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Story story)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoryDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoryDetailsOnPageOpenedEvent value)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoryDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoryDetailsEventCopyWith<StoryDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryDetailsEventCopyWith<$Res> {
  factory $StoryDetailsEventCopyWith(
          StoryDetailsEvent value, $Res Function(StoryDetailsEvent) then) =
      _$StoryDetailsEventCopyWithImpl<$Res, StoryDetailsEvent>;
  @useResult
  $Res call({Story story});

  $StoryCopyWith<$Res> get story;
}

/// @nodoc
class _$StoryDetailsEventCopyWithImpl<$Res, $Val extends StoryDetailsEvent>
    implements $StoryDetailsEventCopyWith<$Res> {
  _$StoryDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = null,
  }) {
    return _then(_value.copyWith(
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res> get story {
    return $StoryCopyWith<$Res>(_value.story, (value) {
      return _then(_value.copyWith(story: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StoryDetailsOnPageOpenedEventCopyWith<$Res>
    implements $StoryDetailsEventCopyWith<$Res> {
  factory _$$_StoryDetailsOnPageOpenedEventCopyWith(
          _$_StoryDetailsOnPageOpenedEvent value,
          $Res Function(_$_StoryDetailsOnPageOpenedEvent) then) =
      __$$_StoryDetailsOnPageOpenedEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Story story});

  @override
  $StoryCopyWith<$Res> get story;
}

/// @nodoc
class __$$_StoryDetailsOnPageOpenedEventCopyWithImpl<$Res>
    extends _$StoryDetailsEventCopyWithImpl<$Res,
        _$_StoryDetailsOnPageOpenedEvent>
    implements _$$_StoryDetailsOnPageOpenedEventCopyWith<$Res> {
  __$$_StoryDetailsOnPageOpenedEventCopyWithImpl(
      _$_StoryDetailsOnPageOpenedEvent _value,
      $Res Function(_$_StoryDetailsOnPageOpenedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = null,
  }) {
    return _then(_$_StoryDetailsOnPageOpenedEvent(
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story,
    ));
  }
}

/// @nodoc

class _$_StoryDetailsOnPageOpenedEvent
    implements _StoryDetailsOnPageOpenedEvent {
  const _$_StoryDetailsOnPageOpenedEvent({required this.story});

  @override
  final Story story;

  @override
  String toString() {
    return 'StoryDetailsEvent.onPageOpened(story: $story)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryDetailsOnPageOpenedEvent &&
            (identical(other.story, story) || other.story == story));
  }

  @override
  int get hashCode => Object.hash(runtimeType, story);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoryDetailsOnPageOpenedEventCopyWith<_$_StoryDetailsOnPageOpenedEvent>
      get copyWith => __$$_StoryDetailsOnPageOpenedEventCopyWithImpl<
          _$_StoryDetailsOnPageOpenedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Story story) onPageOpened,
  }) {
    return onPageOpened(story);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Story story)? onPageOpened,
  }) {
    return onPageOpened?.call(story);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Story story)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(story);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoryDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoryDetailsOnPageOpenedEvent value)? onPageOpened,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoryDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _StoryDetailsOnPageOpenedEvent implements StoryDetailsEvent {
  const factory _StoryDetailsOnPageOpenedEvent({required final Story story}) =
      _$_StoryDetailsOnPageOpenedEvent;

  @override
  Story get story;
  @override
  @JsonKey(ignore: true)
  _$$_StoryDetailsOnPageOpenedEventCopyWith<_$_StoryDetailsOnPageOpenedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoryDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Character> storyCharacters,
            List<Comic> storyComics,
            List<Series> storySeries,
            List<Creator> storyCreators)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> storyCharacters, List<Comic> storyComics,
            List<Series> storySeries, List<Creator> storyCreators)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> storyCharacters, List<Comic> storyComics,
            List<Series> storySeries, List<Creator> storyCreators)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoryDetailsLoadingState value) loading,
    required TResult Function(_SeriesDetailsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoryDetailsLoadingState value)? loading,
    TResult? Function(_SeriesDetailsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoryDetailsLoadingState value)? loading,
    TResult Function(_SeriesDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryDetailsStateCopyWith<$Res> {
  factory $StoryDetailsStateCopyWith(
          StoryDetailsState value, $Res Function(StoryDetailsState) then) =
      _$StoryDetailsStateCopyWithImpl<$Res, StoryDetailsState>;
}

/// @nodoc
class _$StoryDetailsStateCopyWithImpl<$Res, $Val extends StoryDetailsState>
    implements $StoryDetailsStateCopyWith<$Res> {
  _$StoryDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StoryDetailsLoadingStateCopyWith<$Res> {
  factory _$$_StoryDetailsLoadingStateCopyWith(
          _$_StoryDetailsLoadingState value,
          $Res Function(_$_StoryDetailsLoadingState) then) =
      __$$_StoryDetailsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StoryDetailsLoadingStateCopyWithImpl<$Res>
    extends _$StoryDetailsStateCopyWithImpl<$Res, _$_StoryDetailsLoadingState>
    implements _$$_StoryDetailsLoadingStateCopyWith<$Res> {
  __$$_StoryDetailsLoadingStateCopyWithImpl(_$_StoryDetailsLoadingState _value,
      $Res Function(_$_StoryDetailsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StoryDetailsLoadingState implements _StoryDetailsLoadingState {
  const _$_StoryDetailsLoadingState();

  @override
  String toString() {
    return 'StoryDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryDetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Character> storyCharacters,
            List<Comic> storyComics,
            List<Series> storySeries,
            List<Creator> storyCreators)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> storyCharacters, List<Comic> storyComics,
            List<Series> storySeries, List<Creator> storyCreators)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> storyCharacters, List<Comic> storyComics,
            List<Series> storySeries, List<Creator> storyCreators)?
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
    required TResult Function(_StoryDetailsLoadingState value) loading,
    required TResult Function(_SeriesDetailsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoryDetailsLoadingState value)? loading,
    TResult? Function(_SeriesDetailsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoryDetailsLoadingState value)? loading,
    TResult Function(_SeriesDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _StoryDetailsLoadingState implements StoryDetailsState {
  const factory _StoryDetailsLoadingState() = _$_StoryDetailsLoadingState;
}

/// @nodoc
abstract class _$$_SeriesDetailsLoadedStateCopyWith<$Res> {
  factory _$$_SeriesDetailsLoadedStateCopyWith(
          _$_SeriesDetailsLoadedState value,
          $Res Function(_$_SeriesDetailsLoadedState) then) =
      __$$_SeriesDetailsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Character> storyCharacters,
      List<Comic> storyComics,
      List<Series> storySeries,
      List<Creator> storyCreators});
}

/// @nodoc
class __$$_SeriesDetailsLoadedStateCopyWithImpl<$Res>
    extends _$StoryDetailsStateCopyWithImpl<$Res, _$_SeriesDetailsLoadedState>
    implements _$$_SeriesDetailsLoadedStateCopyWith<$Res> {
  __$$_SeriesDetailsLoadedStateCopyWithImpl(_$_SeriesDetailsLoadedState _value,
      $Res Function(_$_SeriesDetailsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storyCharacters = null,
    Object? storyComics = null,
    Object? storySeries = null,
    Object? storyCreators = null,
  }) {
    return _then(_$_SeriesDetailsLoadedState(
      storyCharacters: null == storyCharacters
          ? _value._storyCharacters
          : storyCharacters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      storyComics: null == storyComics
          ? _value._storyComics
          : storyComics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
      storySeries: null == storySeries
          ? _value._storySeries
          : storySeries // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      storyCreators: null == storyCreators
          ? _value._storyCreators
          : storyCreators // ignore: cast_nullable_to_non_nullable
              as List<Creator>,
    ));
  }
}

/// @nodoc

class _$_SeriesDetailsLoadedState implements _SeriesDetailsLoadedState {
  const _$_SeriesDetailsLoadedState(
      {required final List<Character> storyCharacters,
      required final List<Comic> storyComics,
      required final List<Series> storySeries,
      required final List<Creator> storyCreators})
      : _storyCharacters = storyCharacters,
        _storyComics = storyComics,
        _storySeries = storySeries,
        _storyCreators = storyCreators;

  final List<Character> _storyCharacters;
  @override
  List<Character> get storyCharacters {
    if (_storyCharacters is EqualUnmodifiableListView) return _storyCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storyCharacters);
  }

  final List<Comic> _storyComics;
  @override
  List<Comic> get storyComics {
    if (_storyComics is EqualUnmodifiableListView) return _storyComics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storyComics);
  }

  final List<Series> _storySeries;
  @override
  List<Series> get storySeries {
    if (_storySeries is EqualUnmodifiableListView) return _storySeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storySeries);
  }

  final List<Creator> _storyCreators;
  @override
  List<Creator> get storyCreators {
    if (_storyCreators is EqualUnmodifiableListView) return _storyCreators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storyCreators);
  }

  @override
  String toString() {
    return 'StoryDetailsState.loaded(storyCharacters: $storyCharacters, storyComics: $storyComics, storySeries: $storySeries, storyCreators: $storyCreators)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesDetailsLoadedState &&
            const DeepCollectionEquality()
                .equals(other._storyCharacters, _storyCharacters) &&
            const DeepCollectionEquality()
                .equals(other._storyComics, _storyComics) &&
            const DeepCollectionEquality()
                .equals(other._storySeries, _storySeries) &&
            const DeepCollectionEquality()
                .equals(other._storyCreators, _storyCreators));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_storyCharacters),
      const DeepCollectionEquality().hash(_storyComics),
      const DeepCollectionEquality().hash(_storySeries),
      const DeepCollectionEquality().hash(_storyCreators));

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
            List<Character> storyCharacters,
            List<Comic> storyComics,
            List<Series> storySeries,
            List<Creator> storyCreators)
        loaded,
  }) {
    return loaded(storyCharacters, storyComics, storySeries, storyCreators);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> storyCharacters, List<Comic> storyComics,
            List<Series> storySeries, List<Creator> storyCreators)?
        loaded,
  }) {
    return loaded?.call(
        storyCharacters, storyComics, storySeries, storyCreators);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> storyCharacters, List<Comic> storyComics,
            List<Series> storySeries, List<Creator> storyCreators)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(storyCharacters, storyComics, storySeries, storyCreators);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoryDetailsLoadingState value) loading,
    required TResult Function(_SeriesDetailsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoryDetailsLoadingState value)? loading,
    TResult? Function(_SeriesDetailsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoryDetailsLoadingState value)? loading,
    TResult Function(_SeriesDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SeriesDetailsLoadedState implements StoryDetailsState {
  const factory _SeriesDetailsLoadedState(
          {required final List<Character> storyCharacters,
          required final List<Comic> storyComics,
          required final List<Series> storySeries,
          required final List<Creator> storyCreators}) =
      _$_SeriesDetailsLoadedState;

  List<Character> get storyCharacters;
  List<Comic> get storyComics;
  List<Series> get storySeries;
  List<Creator> get storyCreators;
  @JsonKey(ignore: true)
  _$$_SeriesDetailsLoadedStateCopyWith<_$_SeriesDetailsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
