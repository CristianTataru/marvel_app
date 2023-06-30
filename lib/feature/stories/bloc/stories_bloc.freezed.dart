// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Story story) onStoryTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Story story)? onStoryTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Story story)? onStoryTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoriesOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_StoriesMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_StoriesOnStoryTappedEvent value) onStoryTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_StoriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_StoriesOnStoryTappedEvent value)? onStoryTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_StoriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_StoriesOnStoryTappedEvent value)? onStoryTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesEventCopyWith<$Res> {
  factory $StoriesEventCopyWith(
          StoriesEvent value, $Res Function(StoriesEvent) then) =
      _$StoriesEventCopyWithImpl<$Res, StoriesEvent>;
}

/// @nodoc
class _$StoriesEventCopyWithImpl<$Res, $Val extends StoriesEvent>
    implements $StoriesEventCopyWith<$Res> {
  _$StoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StoriesOnPageOpenedEventCopyWith<$Res> {
  factory _$$_StoriesOnPageOpenedEventCopyWith(
          _$_StoriesOnPageOpenedEvent value,
          $Res Function(_$_StoriesOnPageOpenedEvent) then) =
      __$$_StoriesOnPageOpenedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StoriesOnPageOpenedEventCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res, _$_StoriesOnPageOpenedEvent>
    implements _$$_StoriesOnPageOpenedEventCopyWith<$Res> {
  __$$_StoriesOnPageOpenedEventCopyWithImpl(_$_StoriesOnPageOpenedEvent _value,
      $Res Function(_$_StoriesOnPageOpenedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StoriesOnPageOpenedEvent implements _StoriesOnPageOpenedEvent {
  const _$_StoriesOnPageOpenedEvent();

  @override
  String toString() {
    return 'StoriesEvent.onPageOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesOnPageOpenedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Story story) onStoryTapped,
  }) {
    return onPageOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Story story)? onStoryTapped,
  }) {
    return onPageOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Story story)? onStoryTapped,
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
    required TResult Function(_StoriesOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_StoriesMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_StoriesOnStoryTappedEvent value) onStoryTapped,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_StoriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_StoriesOnStoryTappedEvent value)? onStoryTapped,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_StoriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_StoriesOnStoryTappedEvent value)? onStoryTapped,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _StoriesOnPageOpenedEvent implements StoriesEvent {
  const factory _StoriesOnPageOpenedEvent() = _$_StoriesOnPageOpenedEvent;
}

/// @nodoc
abstract class _$$_StoriesMoreDataLoadingEventCopyWith<$Res> {
  factory _$$_StoriesMoreDataLoadingEventCopyWith(
          _$_StoriesMoreDataLoadingEvent value,
          $Res Function(_$_StoriesMoreDataLoadingEvent) then) =
      __$$_StoriesMoreDataLoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StoriesMoreDataLoadingEventCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res, _$_StoriesMoreDataLoadingEvent>
    implements _$$_StoriesMoreDataLoadingEventCopyWith<$Res> {
  __$$_StoriesMoreDataLoadingEventCopyWithImpl(
      _$_StoriesMoreDataLoadingEvent _value,
      $Res Function(_$_StoriesMoreDataLoadingEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StoriesMoreDataLoadingEvent implements _StoriesMoreDataLoadingEvent {
  const _$_StoriesMoreDataLoadingEvent();

  @override
  String toString() {
    return 'StoriesEvent.onMoreDataLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesMoreDataLoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Story story) onStoryTapped,
  }) {
    return onMoreDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Story story)? onStoryTapped,
  }) {
    return onMoreDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Story story)? onStoryTapped,
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
    required TResult Function(_StoriesOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_StoriesMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_StoriesOnStoryTappedEvent value) onStoryTapped,
  }) {
    return onMoreDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_StoriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_StoriesOnStoryTappedEvent value)? onStoryTapped,
  }) {
    return onMoreDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_StoriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_StoriesOnStoryTappedEvent value)? onStoryTapped,
    required TResult orElse(),
  }) {
    if (onMoreDataLoading != null) {
      return onMoreDataLoading(this);
    }
    return orElse();
  }
}

abstract class _StoriesMoreDataLoadingEvent implements StoriesEvent {
  const factory _StoriesMoreDataLoadingEvent() = _$_StoriesMoreDataLoadingEvent;
}

/// @nodoc
abstract class _$$_StoriesOnStoryTappedEventCopyWith<$Res> {
  factory _$$_StoriesOnStoryTappedEventCopyWith(
          _$_StoriesOnStoryTappedEvent value,
          $Res Function(_$_StoriesOnStoryTappedEvent) then) =
      __$$_StoriesOnStoryTappedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Story story});

  $StoryCopyWith<$Res> get story;
}

/// @nodoc
class __$$_StoriesOnStoryTappedEventCopyWithImpl<$Res>
    extends _$StoriesEventCopyWithImpl<$Res, _$_StoriesOnStoryTappedEvent>
    implements _$$_StoriesOnStoryTappedEventCopyWith<$Res> {
  __$$_StoriesOnStoryTappedEventCopyWithImpl(
      _$_StoriesOnStoryTappedEvent _value,
      $Res Function(_$_StoriesOnStoryTappedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? story = null,
  }) {
    return _then(_$_StoriesOnStoryTappedEvent(
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res> get story {
    return $StoryCopyWith<$Res>(_value.story, (value) {
      return _then(_value.copyWith(story: value));
    });
  }
}

/// @nodoc

class _$_StoriesOnStoryTappedEvent implements _StoriesOnStoryTappedEvent {
  const _$_StoriesOnStoryTappedEvent({required this.story});

  @override
  final Story story;

  @override
  String toString() {
    return 'StoriesEvent.onStoryTapped(story: $story)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesOnStoryTappedEvent &&
            (identical(other.story, story) || other.story == story));
  }

  @override
  int get hashCode => Object.hash(runtimeType, story);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoriesOnStoryTappedEventCopyWith<_$_StoriesOnStoryTappedEvent>
      get copyWith => __$$_StoriesOnStoryTappedEventCopyWithImpl<
          _$_StoriesOnStoryTappedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Story story) onStoryTapped,
  }) {
    return onStoryTapped(story);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Story story)? onStoryTapped,
  }) {
    return onStoryTapped?.call(story);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Story story)? onStoryTapped,
    required TResult orElse(),
  }) {
    if (onStoryTapped != null) {
      return onStoryTapped(story);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoriesOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_StoriesMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_StoriesOnStoryTappedEvent value) onStoryTapped,
  }) {
    return onStoryTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_StoriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_StoriesOnStoryTappedEvent value)? onStoryTapped,
  }) {
    return onStoryTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_StoriesMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_StoriesOnStoryTappedEvent value)? onStoryTapped,
    required TResult orElse(),
  }) {
    if (onStoryTapped != null) {
      return onStoryTapped(this);
    }
    return orElse();
  }
}

abstract class _StoriesOnStoryTappedEvent implements StoriesEvent {
  const factory _StoriesOnStoryTappedEvent({required final Story story}) =
      _$_StoriesOnStoryTappedEvent;

  Story get story;
  @JsonKey(ignore: true)
  _$$_StoriesOnStoryTappedEventCopyWith<_$_StoriesOnStoryTappedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StoriesState {
  List<Story> get stories => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Story> stories)
        loaded,
    required TResult Function(List<Story> stories) moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool canLoadMore, int lastOffset, List<Story> stories)?
        loaded,
    TResult? Function(List<Story> stories)? moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canLoadMore, int lastOffset, List<Story> stories)?
        loaded,
    TResult Function(List<Story> stories)? moreLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoriesLoadedState value) loaded,
    required TResult Function(_StoriesMoreLoadingState value) moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesLoadedState value)? loaded,
    TResult? Function(_StoriesMoreLoadingState value)? moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesLoadedState value)? loaded,
    TResult Function(_StoriesMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StoriesStateCopyWith<StoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesStateCopyWith<$Res> {
  factory $StoriesStateCopyWith(
          StoriesState value, $Res Function(StoriesState) then) =
      _$StoriesStateCopyWithImpl<$Res, StoriesState>;
  @useResult
  $Res call({List<Story> stories});
}

/// @nodoc
class _$StoriesStateCopyWithImpl<$Res, $Val extends StoriesState>
    implements $StoriesStateCopyWith<$Res> {
  _$StoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
  }) {
    return _then(_value.copyWith(
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoriesLoadedStateCopyWith<$Res>
    implements $StoriesStateCopyWith<$Res> {
  factory _$$_StoriesLoadedStateCopyWith(_$_StoriesLoadedState value,
          $Res Function(_$_StoriesLoadedState) then) =
      __$$_StoriesLoadedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool canLoadMore, int lastOffset, List<Story> stories});
}

/// @nodoc
class __$$_StoriesLoadedStateCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$_StoriesLoadedState>
    implements _$$_StoriesLoadedStateCopyWith<$Res> {
  __$$_StoriesLoadedStateCopyWithImpl(
      _$_StoriesLoadedState _value, $Res Function(_$_StoriesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canLoadMore = null,
    Object? lastOffset = null,
    Object? stories = null,
  }) {
    return _then(_$_StoriesLoadedState(
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      lastOffset: null == lastOffset
          ? _value.lastOffset
          : lastOffset // ignore: cast_nullable_to_non_nullable
              as int,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc

class _$_StoriesLoadedState implements _StoriesLoadedState {
  const _$_StoriesLoadedState(
      {required this.canLoadMore,
      required this.lastOffset,
      required final List<Story> stories})
      : _stories = stories;

  @override
  final bool canLoadMore;
  @override
  final int lastOffset;
  final List<Story> _stories;
  @override
  List<Story> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'StoriesState.loaded(canLoadMore: $canLoadMore, lastOffset: $lastOffset, stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesLoadedState &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore) &&
            (identical(other.lastOffset, lastOffset) ||
                other.lastOffset == lastOffset) &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canLoadMore, lastOffset,
      const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoriesLoadedStateCopyWith<_$_StoriesLoadedState> get copyWith =>
      __$$_StoriesLoadedStateCopyWithImpl<_$_StoriesLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Story> stories)
        loaded,
    required TResult Function(List<Story> stories) moreLoading,
  }) {
    return loaded(canLoadMore, lastOffset, stories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool canLoadMore, int lastOffset, List<Story> stories)?
        loaded,
    TResult? Function(List<Story> stories)? moreLoading,
  }) {
    return loaded?.call(canLoadMore, lastOffset, stories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canLoadMore, int lastOffset, List<Story> stories)?
        loaded,
    TResult Function(List<Story> stories)? moreLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(canLoadMore, lastOffset, stories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoriesLoadedState value) loaded,
    required TResult Function(_StoriesMoreLoadingState value) moreLoading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesLoadedState value)? loaded,
    TResult? Function(_StoriesMoreLoadingState value)? moreLoading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesLoadedState value)? loaded,
    TResult Function(_StoriesMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _StoriesLoadedState implements StoriesState {
  const factory _StoriesLoadedState(
      {required final bool canLoadMore,
      required final int lastOffset,
      required final List<Story> stories}) = _$_StoriesLoadedState;

  bool get canLoadMore;
  int get lastOffset;
  @override
  List<Story> get stories;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesLoadedStateCopyWith<_$_StoriesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StoriesMoreLoadingStateCopyWith<$Res>
    implements $StoriesStateCopyWith<$Res> {
  factory _$$_StoriesMoreLoadingStateCopyWith(_$_StoriesMoreLoadingState value,
          $Res Function(_$_StoriesMoreLoadingState) then) =
      __$$_StoriesMoreLoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Story> stories});
}

/// @nodoc
class __$$_StoriesMoreLoadingStateCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$_StoriesMoreLoadingState>
    implements _$$_StoriesMoreLoadingStateCopyWith<$Res> {
  __$$_StoriesMoreLoadingStateCopyWithImpl(_$_StoriesMoreLoadingState _value,
      $Res Function(_$_StoriesMoreLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
  }) {
    return _then(_$_StoriesMoreLoadingState(
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc

class _$_StoriesMoreLoadingState implements _StoriesMoreLoadingState {
  const _$_StoriesMoreLoadingState({required final List<Story> stories})
      : _stories = stories;

  final List<Story> _stories;
  @override
  List<Story> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'StoriesState.moreLoading(stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoriesMoreLoadingState &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoriesMoreLoadingStateCopyWith<_$_StoriesMoreLoadingState>
      get copyWith =>
          __$$_StoriesMoreLoadingStateCopyWithImpl<_$_StoriesMoreLoadingState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Story> stories)
        loaded,
    required TResult Function(List<Story> stories) moreLoading,
  }) {
    return moreLoading(stories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool canLoadMore, int lastOffset, List<Story> stories)?
        loaded,
    TResult? Function(List<Story> stories)? moreLoading,
  }) {
    return moreLoading?.call(stories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool canLoadMore, int lastOffset, List<Story> stories)?
        loaded,
    TResult Function(List<Story> stories)? moreLoading,
    required TResult orElse(),
  }) {
    if (moreLoading != null) {
      return moreLoading(stories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StoriesLoadedState value) loaded,
    required TResult Function(_StoriesMoreLoadingState value) moreLoading,
  }) {
    return moreLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StoriesLoadedState value)? loaded,
    TResult? Function(_StoriesMoreLoadingState value)? moreLoading,
  }) {
    return moreLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StoriesLoadedState value)? loaded,
    TResult Function(_StoriesMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (moreLoading != null) {
      return moreLoading(this);
    }
    return orElse();
  }
}

abstract class _StoriesMoreLoadingState implements StoriesState {
  const factory _StoriesMoreLoadingState({required final List<Story> stories}) =
      _$_StoriesMoreLoadingState;

  @override
  List<Story> get stories;
  @override
  @JsonKey(ignore: true)
  _$$_StoriesMoreLoadingStateCopyWith<_$_StoriesMoreLoadingState>
      get copyWith => throw _privateConstructorUsedError;
}
