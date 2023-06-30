// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComicsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character? character, Creator? creator,
            Series? series, Story? story, bool filtred)
        onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Comic comic) onComicTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character? character, Creator? creator, Series? series,
            Story? story, bool filtred)?
        onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Comic comic)? onComicTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character? character, Creator? creator, Series? series,
            Story? story, bool filtred)?
        onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Comic comic)? onComicTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComicsOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_ComicsMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_ComicOnComicTappedEvent value) onComicTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_ComicsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_ComicOnComicTappedEvent value)? onComicTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_ComicsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_ComicOnComicTappedEvent value)? onComicTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsEventCopyWith<$Res> {
  factory $ComicsEventCopyWith(
          ComicsEvent value, $Res Function(ComicsEvent) then) =
      _$ComicsEventCopyWithImpl<$Res, ComicsEvent>;
}

/// @nodoc
class _$ComicsEventCopyWithImpl<$Res, $Val extends ComicsEvent>
    implements $ComicsEventCopyWith<$Res> {
  _$ComicsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ComicsOnPageOpenedEventCopyWith<$Res> {
  factory _$$_ComicsOnPageOpenedEventCopyWith(_$_ComicsOnPageOpenedEvent value,
          $Res Function(_$_ComicsOnPageOpenedEvent) then) =
      __$$_ComicsOnPageOpenedEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Character? character,
      Creator? creator,
      Series? series,
      Story? story,
      bool filtred});

  $CharacterCopyWith<$Res>? get character;
  $CreatorCopyWith<$Res>? get creator;
  $SeriesCopyWith<$Res>? get series;
  $StoryCopyWith<$Res>? get story;
}

/// @nodoc
class __$$_ComicsOnPageOpenedEventCopyWithImpl<$Res>
    extends _$ComicsEventCopyWithImpl<$Res, _$_ComicsOnPageOpenedEvent>
    implements _$$_ComicsOnPageOpenedEventCopyWith<$Res> {
  __$$_ComicsOnPageOpenedEventCopyWithImpl(_$_ComicsOnPageOpenedEvent _value,
      $Res Function(_$_ComicsOnPageOpenedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
    Object? creator = freezed,
    Object? series = freezed,
    Object? story = freezed,
    Object? filtred = null,
  }) {
    return _then(_$_ComicsOnPageOpenedEvent(
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Creator?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series?,
      story: freezed == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story?,
      filtred: null == filtred
          ? _value.filtred
          : filtred // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get character {
    if (_value.character == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.character!, (value) {
      return _then(_value.copyWith(character: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $CreatorCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesCopyWith<$Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $SeriesCopyWith<$Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res>? get story {
    if (_value.story == null) {
      return null;
    }

    return $StoryCopyWith<$Res>(_value.story!, (value) {
      return _then(_value.copyWith(story: value));
    });
  }
}

/// @nodoc

class _$_ComicsOnPageOpenedEvent implements _ComicsOnPageOpenedEvent {
  const _$_ComicsOnPageOpenedEvent(
      {required this.character,
      required this.creator,
      required this.series,
      required this.story,
      required this.filtred});

  @override
  final Character? character;
  @override
  final Creator? creator;
  @override
  final Series? series;
  @override
  final Story? story;
  @override
  final bool filtred;

  @override
  String toString() {
    return 'ComicsEvent.onPageOpened(character: $character, creator: $creator, series: $series, story: $story, filtred: $filtred)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsOnPageOpenedEvent &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.filtred, filtred) || other.filtred == filtred));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, character, creator, series, story, filtred);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsOnPageOpenedEventCopyWith<_$_ComicsOnPageOpenedEvent>
      get copyWith =>
          __$$_ComicsOnPageOpenedEventCopyWithImpl<_$_ComicsOnPageOpenedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character? character, Creator? creator,
            Series? series, Story? story, bool filtred)
        onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Comic comic) onComicTapped,
  }) {
    return onPageOpened(character, creator, series, story, filtred);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character? character, Creator? creator, Series? series,
            Story? story, bool filtred)?
        onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Comic comic)? onComicTapped,
  }) {
    return onPageOpened?.call(character, creator, series, story, filtred);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character? character, Creator? creator, Series? series,
            Story? story, bool filtred)?
        onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Comic comic)? onComicTapped,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(character, creator, series, story, filtred);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComicsOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_ComicsMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_ComicOnComicTappedEvent value) onComicTapped,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_ComicsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_ComicOnComicTappedEvent value)? onComicTapped,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_ComicsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_ComicOnComicTappedEvent value)? onComicTapped,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _ComicsOnPageOpenedEvent implements ComicsEvent {
  const factory _ComicsOnPageOpenedEvent(
      {required final Character? character,
      required final Creator? creator,
      required final Series? series,
      required final Story? story,
      required final bool filtred}) = _$_ComicsOnPageOpenedEvent;

  Character? get character;
  Creator? get creator;
  Series? get series;
  Story? get story;
  bool get filtred;
  @JsonKey(ignore: true)
  _$$_ComicsOnPageOpenedEventCopyWith<_$_ComicsOnPageOpenedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ComicsMoreDataLoadingEventCopyWith<$Res> {
  factory _$$_ComicsMoreDataLoadingEventCopyWith(
          _$_ComicsMoreDataLoadingEvent value,
          $Res Function(_$_ComicsMoreDataLoadingEvent) then) =
      __$$_ComicsMoreDataLoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ComicsMoreDataLoadingEventCopyWithImpl<$Res>
    extends _$ComicsEventCopyWithImpl<$Res, _$_ComicsMoreDataLoadingEvent>
    implements _$$_ComicsMoreDataLoadingEventCopyWith<$Res> {
  __$$_ComicsMoreDataLoadingEventCopyWithImpl(
      _$_ComicsMoreDataLoadingEvent _value,
      $Res Function(_$_ComicsMoreDataLoadingEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ComicsMoreDataLoadingEvent implements _ComicsMoreDataLoadingEvent {
  const _$_ComicsMoreDataLoadingEvent();

  @override
  String toString() {
    return 'ComicsEvent.onMoreDataLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsMoreDataLoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character? character, Creator? creator,
            Series? series, Story? story, bool filtred)
        onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Comic comic) onComicTapped,
  }) {
    return onMoreDataLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character? character, Creator? creator, Series? series,
            Story? story, bool filtred)?
        onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Comic comic)? onComicTapped,
  }) {
    return onMoreDataLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character? character, Creator? creator, Series? series,
            Story? story, bool filtred)?
        onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Comic comic)? onComicTapped,
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
    required TResult Function(_ComicsOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_ComicsMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_ComicOnComicTappedEvent value) onComicTapped,
  }) {
    return onMoreDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_ComicsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_ComicOnComicTappedEvent value)? onComicTapped,
  }) {
    return onMoreDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_ComicsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_ComicOnComicTappedEvent value)? onComicTapped,
    required TResult orElse(),
  }) {
    if (onMoreDataLoading != null) {
      return onMoreDataLoading(this);
    }
    return orElse();
  }
}

abstract class _ComicsMoreDataLoadingEvent implements ComicsEvent {
  const factory _ComicsMoreDataLoadingEvent() = _$_ComicsMoreDataLoadingEvent;
}

/// @nodoc
abstract class _$$_ComicOnComicTappedEventCopyWith<$Res> {
  factory _$$_ComicOnComicTappedEventCopyWith(_$_ComicOnComicTappedEvent value,
          $Res Function(_$_ComicOnComicTappedEvent) then) =
      __$$_ComicOnComicTappedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Comic comic});

  $ComicCopyWith<$Res> get comic;
}

/// @nodoc
class __$$_ComicOnComicTappedEventCopyWithImpl<$Res>
    extends _$ComicsEventCopyWithImpl<$Res, _$_ComicOnComicTappedEvent>
    implements _$$_ComicOnComicTappedEventCopyWith<$Res> {
  __$$_ComicOnComicTappedEventCopyWithImpl(_$_ComicOnComicTappedEvent _value,
      $Res Function(_$_ComicOnComicTappedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comic = null,
  }) {
    return _then(_$_ComicOnComicTappedEvent(
      comic: null == comic
          ? _value.comic
          : comic // ignore: cast_nullable_to_non_nullable
              as Comic,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicCopyWith<$Res> get comic {
    return $ComicCopyWith<$Res>(_value.comic, (value) {
      return _then(_value.copyWith(comic: value));
    });
  }
}

/// @nodoc

class _$_ComicOnComicTappedEvent implements _ComicOnComicTappedEvent {
  const _$_ComicOnComicTappedEvent({required this.comic});

  @override
  final Comic comic;

  @override
  String toString() {
    return 'ComicsEvent.onComicTapped(comic: $comic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicOnComicTappedEvent &&
            (identical(other.comic, comic) || other.comic == comic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicOnComicTappedEventCopyWith<_$_ComicOnComicTappedEvent>
      get copyWith =>
          __$$_ComicOnComicTappedEventCopyWithImpl<_$_ComicOnComicTappedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character? character, Creator? creator,
            Series? series, Story? story, bool filtred)
        onPageOpened,
    required TResult Function() onMoreDataLoading,
    required TResult Function(Comic comic) onComicTapped,
  }) {
    return onComicTapped(comic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character? character, Creator? creator, Series? series,
            Story? story, bool filtred)?
        onPageOpened,
    TResult? Function()? onMoreDataLoading,
    TResult? Function(Comic comic)? onComicTapped,
  }) {
    return onComicTapped?.call(comic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character? character, Creator? creator, Series? series,
            Story? story, bool filtred)?
        onPageOpened,
    TResult Function()? onMoreDataLoading,
    TResult Function(Comic comic)? onComicTapped,
    required TResult orElse(),
  }) {
    if (onComicTapped != null) {
      return onComicTapped(comic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComicsOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_ComicsMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_ComicOnComicTappedEvent value) onComicTapped,
  }) {
    return onComicTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_ComicsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_ComicOnComicTappedEvent value)? onComicTapped,
  }) {
    return onComicTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_ComicsMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_ComicOnComicTappedEvent value)? onComicTapped,
    required TResult orElse(),
  }) {
    if (onComicTapped != null) {
      return onComicTapped(this);
    }
    return orElse();
  }
}

abstract class _ComicOnComicTappedEvent implements ComicsEvent {
  const factory _ComicOnComicTappedEvent({required final Comic comic}) =
      _$_ComicOnComicTappedEvent;

  Comic get comic;
  @JsonKey(ignore: true)
  _$$_ComicOnComicTappedEventCopyWith<_$_ComicOnComicTappedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ComicsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Comic> comics)
        loaded,
    required TResult Function(List<Comic> comics) moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool canLoadMore, int lastOffset, List<Comic> comics)?
        loaded,
    TResult? Function(List<Comic> comics)? moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool canLoadMore, int lastOffset, List<Comic> comics)?
        loaded,
    TResult Function(List<Comic> comics)? moreLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComicsLoadingState value) loading,
    required TResult Function(_ComicsLoadedState value) loaded,
    required TResult Function(_ComicsMoreLoadingState value) moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicsLoadingState value)? loading,
    TResult? Function(_ComicsLoadedState value)? loaded,
    TResult? Function(_ComicsMoreLoadingState value)? moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicsLoadingState value)? loading,
    TResult Function(_ComicsLoadedState value)? loaded,
    TResult Function(_ComicsMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsStateCopyWith<$Res> {
  factory $ComicsStateCopyWith(
          ComicsState value, $Res Function(ComicsState) then) =
      _$ComicsStateCopyWithImpl<$Res, ComicsState>;
}

/// @nodoc
class _$ComicsStateCopyWithImpl<$Res, $Val extends ComicsState>
    implements $ComicsStateCopyWith<$Res> {
  _$ComicsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ComicsLoadingStateCopyWith<$Res> {
  factory _$$_ComicsLoadingStateCopyWith(_$_ComicsLoadingState value,
          $Res Function(_$_ComicsLoadingState) then) =
      __$$_ComicsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ComicsLoadingStateCopyWithImpl<$Res>
    extends _$ComicsStateCopyWithImpl<$Res, _$_ComicsLoadingState>
    implements _$$_ComicsLoadingStateCopyWith<$Res> {
  __$$_ComicsLoadingStateCopyWithImpl(
      _$_ComicsLoadingState _value, $Res Function(_$_ComicsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ComicsLoadingState implements _ComicsLoadingState {
  const _$_ComicsLoadingState();

  @override
  String toString() {
    return 'ComicsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ComicsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Comic> comics)
        loaded,
    required TResult Function(List<Comic> comics) moreLoading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool canLoadMore, int lastOffset, List<Comic> comics)?
        loaded,
    TResult? Function(List<Comic> comics)? moreLoading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool canLoadMore, int lastOffset, List<Comic> comics)?
        loaded,
    TResult Function(List<Comic> comics)? moreLoading,
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
    required TResult Function(_ComicsLoadingState value) loading,
    required TResult Function(_ComicsLoadedState value) loaded,
    required TResult Function(_ComicsMoreLoadingState value) moreLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicsLoadingState value)? loading,
    TResult? Function(_ComicsLoadedState value)? loaded,
    TResult? Function(_ComicsMoreLoadingState value)? moreLoading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicsLoadingState value)? loading,
    TResult Function(_ComicsLoadedState value)? loaded,
    TResult Function(_ComicsMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ComicsLoadingState implements ComicsState {
  const factory _ComicsLoadingState() = _$_ComicsLoadingState;
}

/// @nodoc
abstract class _$$_ComicsLoadedStateCopyWith<$Res> {
  factory _$$_ComicsLoadedStateCopyWith(_$_ComicsLoadedState value,
          $Res Function(_$_ComicsLoadedState) then) =
      __$$_ComicsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool canLoadMore, int lastOffset, List<Comic> comics});
}

/// @nodoc
class __$$_ComicsLoadedStateCopyWithImpl<$Res>
    extends _$ComicsStateCopyWithImpl<$Res, _$_ComicsLoadedState>
    implements _$$_ComicsLoadedStateCopyWith<$Res> {
  __$$_ComicsLoadedStateCopyWithImpl(
      _$_ComicsLoadedState _value, $Res Function(_$_ComicsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canLoadMore = null,
    Object? lastOffset = null,
    Object? comics = null,
  }) {
    return _then(_$_ComicsLoadedState(
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      lastOffset: null == lastOffset
          ? _value.lastOffset
          : lastOffset // ignore: cast_nullable_to_non_nullable
              as int,
      comics: null == comics
          ? _value._comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ));
  }
}

/// @nodoc

class _$_ComicsLoadedState implements _ComicsLoadedState {
  const _$_ComicsLoadedState(
      {required this.canLoadMore,
      required this.lastOffset,
      required final List<Comic> comics})
      : _comics = comics;

  @override
  final bool canLoadMore;
  @override
  final int lastOffset;
  final List<Comic> _comics;
  @override
  List<Comic> get comics {
    if (_comics is EqualUnmodifiableListView) return _comics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comics);
  }

  @override
  String toString() {
    return 'ComicsState.loaded(canLoadMore: $canLoadMore, lastOffset: $lastOffset, comics: $comics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsLoadedState &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore) &&
            (identical(other.lastOffset, lastOffset) ||
                other.lastOffset == lastOffset) &&
            const DeepCollectionEquality().equals(other._comics, _comics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canLoadMore, lastOffset,
      const DeepCollectionEquality().hash(_comics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsLoadedStateCopyWith<_$_ComicsLoadedState> get copyWith =>
      __$$_ComicsLoadedStateCopyWithImpl<_$_ComicsLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Comic> comics)
        loaded,
    required TResult Function(List<Comic> comics) moreLoading,
  }) {
    return loaded(canLoadMore, lastOffset, comics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool canLoadMore, int lastOffset, List<Comic> comics)?
        loaded,
    TResult? Function(List<Comic> comics)? moreLoading,
  }) {
    return loaded?.call(canLoadMore, lastOffset, comics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool canLoadMore, int lastOffset, List<Comic> comics)?
        loaded,
    TResult Function(List<Comic> comics)? moreLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(canLoadMore, lastOffset, comics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComicsLoadingState value) loading,
    required TResult Function(_ComicsLoadedState value) loaded,
    required TResult Function(_ComicsMoreLoadingState value) moreLoading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicsLoadingState value)? loading,
    TResult? Function(_ComicsLoadedState value)? loaded,
    TResult? Function(_ComicsMoreLoadingState value)? moreLoading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicsLoadingState value)? loading,
    TResult Function(_ComicsLoadedState value)? loaded,
    TResult Function(_ComicsMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ComicsLoadedState implements ComicsState {
  const factory _ComicsLoadedState(
      {required final bool canLoadMore,
      required final int lastOffset,
      required final List<Comic> comics}) = _$_ComicsLoadedState;

  bool get canLoadMore;
  int get lastOffset;
  List<Comic> get comics;
  @JsonKey(ignore: true)
  _$$_ComicsLoadedStateCopyWith<_$_ComicsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ComicsMoreLoadingStateCopyWith<$Res> {
  factory _$$_ComicsMoreLoadingStateCopyWith(_$_ComicsMoreLoadingState value,
          $Res Function(_$_ComicsMoreLoadingState) then) =
      __$$_ComicsMoreLoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Comic> comics});
}

/// @nodoc
class __$$_ComicsMoreLoadingStateCopyWithImpl<$Res>
    extends _$ComicsStateCopyWithImpl<$Res, _$_ComicsMoreLoadingState>
    implements _$$_ComicsMoreLoadingStateCopyWith<$Res> {
  __$$_ComicsMoreLoadingStateCopyWithImpl(_$_ComicsMoreLoadingState _value,
      $Res Function(_$_ComicsMoreLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comics = null,
  }) {
    return _then(_$_ComicsMoreLoadingState(
      comics: null == comics
          ? _value._comics
          : comics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
    ));
  }
}

/// @nodoc

class _$_ComicsMoreLoadingState implements _ComicsMoreLoadingState {
  const _$_ComicsMoreLoadingState({required final List<Comic> comics})
      : _comics = comics;

  final List<Comic> _comics;
  @override
  List<Comic> get comics {
    if (_comics is EqualUnmodifiableListView) return _comics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comics);
  }

  @override
  String toString() {
    return 'ComicsState.moreLoading(comics: $comics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicsMoreLoadingState &&
            const DeepCollectionEquality().equals(other._comics, _comics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicsMoreLoadingStateCopyWith<_$_ComicsMoreLoadingState> get copyWith =>
      __$$_ComicsMoreLoadingStateCopyWithImpl<_$_ComicsMoreLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Comic> comics)
        loaded,
    required TResult Function(List<Comic> comics) moreLoading,
  }) {
    return moreLoading(comics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool canLoadMore, int lastOffset, List<Comic> comics)?
        loaded,
    TResult? Function(List<Comic> comics)? moreLoading,
  }) {
    return moreLoading?.call(comics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool canLoadMore, int lastOffset, List<Comic> comics)?
        loaded,
    TResult Function(List<Comic> comics)? moreLoading,
    required TResult orElse(),
  }) {
    if (moreLoading != null) {
      return moreLoading(comics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComicsLoadingState value) loading,
    required TResult Function(_ComicsLoadedState value) loaded,
    required TResult Function(_ComicsMoreLoadingState value) moreLoading,
  }) {
    return moreLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicsLoadingState value)? loading,
    TResult? Function(_ComicsLoadedState value)? loaded,
    TResult? Function(_ComicsMoreLoadingState value)? moreLoading,
  }) {
    return moreLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicsLoadingState value)? loading,
    TResult Function(_ComicsLoadedState value)? loaded,
    TResult Function(_ComicsMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (moreLoading != null) {
      return moreLoading(this);
    }
    return orElse();
  }
}

abstract class _ComicsMoreLoadingState implements ComicsState {
  const factory _ComicsMoreLoadingState({required final List<Comic> comics}) =
      _$_ComicsMoreLoadingState;

  List<Comic> get comics;
  @JsonKey(ignore: true)
  _$$_ComicsMoreLoadingStateCopyWith<_$_ComicsMoreLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
