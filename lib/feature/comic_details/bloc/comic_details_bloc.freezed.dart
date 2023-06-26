// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComicDetailsEvent {
  Comic get comic => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Comic comic) onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Comic comic)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Comic comic)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComicDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicDetailsOnPageOpenedEvent value)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicDetailsEventCopyWith<ComicDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDetailsEventCopyWith<$Res> {
  factory $ComicDetailsEventCopyWith(
          ComicDetailsEvent value, $Res Function(ComicDetailsEvent) then) =
      _$ComicDetailsEventCopyWithImpl<$Res, ComicDetailsEvent>;
  @useResult
  $Res call({Comic comic});

  $ComicCopyWith<$Res> get comic;
}

/// @nodoc
class _$ComicDetailsEventCopyWithImpl<$Res, $Val extends ComicDetailsEvent>
    implements $ComicDetailsEventCopyWith<$Res> {
  _$ComicDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comic = null,
  }) {
    return _then(_value.copyWith(
      comic: null == comic
          ? _value.comic
          : comic // ignore: cast_nullable_to_non_nullable
              as Comic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicCopyWith<$Res> get comic {
    return $ComicCopyWith<$Res>(_value.comic, (value) {
      return _then(_value.copyWith(comic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ComicDetailsOnPageOpenedEventCopyWith<$Res>
    implements $ComicDetailsEventCopyWith<$Res> {
  factory _$$_ComicDetailsOnPageOpenedEventCopyWith(
          _$_ComicDetailsOnPageOpenedEvent value,
          $Res Function(_$_ComicDetailsOnPageOpenedEvent) then) =
      __$$_ComicDetailsOnPageOpenedEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Comic comic});

  @override
  $ComicCopyWith<$Res> get comic;
}

/// @nodoc
class __$$_ComicDetailsOnPageOpenedEventCopyWithImpl<$Res>
    extends _$ComicDetailsEventCopyWithImpl<$Res,
        _$_ComicDetailsOnPageOpenedEvent>
    implements _$$_ComicDetailsOnPageOpenedEventCopyWith<$Res> {
  __$$_ComicDetailsOnPageOpenedEventCopyWithImpl(
      _$_ComicDetailsOnPageOpenedEvent _value,
      $Res Function(_$_ComicDetailsOnPageOpenedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comic = null,
  }) {
    return _then(_$_ComicDetailsOnPageOpenedEvent(
      comic: null == comic
          ? _value.comic
          : comic // ignore: cast_nullable_to_non_nullable
              as Comic,
    ));
  }
}

/// @nodoc

class _$_ComicDetailsOnPageOpenedEvent
    implements _ComicDetailsOnPageOpenedEvent {
  const _$_ComicDetailsOnPageOpenedEvent({required this.comic});

  @override
  final Comic comic;

  @override
  String toString() {
    return 'ComicDetailsEvent.onPageOpened(comic: $comic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicDetailsOnPageOpenedEvent &&
            (identical(other.comic, comic) || other.comic == comic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicDetailsOnPageOpenedEventCopyWith<_$_ComicDetailsOnPageOpenedEvent>
      get copyWith => __$$_ComicDetailsOnPageOpenedEventCopyWithImpl<
          _$_ComicDetailsOnPageOpenedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Comic comic) onPageOpened,
  }) {
    return onPageOpened(comic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Comic comic)? onPageOpened,
  }) {
    return onPageOpened?.call(comic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Comic comic)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(comic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComicDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicDetailsOnPageOpenedEvent value)? onPageOpened,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _ComicDetailsOnPageOpenedEvent implements ComicDetailsEvent {
  const factory _ComicDetailsOnPageOpenedEvent({required final Comic comic}) =
      _$_ComicDetailsOnPageOpenedEvent;

  @override
  Comic get comic;
  @override
  @JsonKey(ignore: true)
  _$$_ComicDetailsOnPageOpenedEventCopyWith<_$_ComicDetailsOnPageOpenedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ComicDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Character> comicCharacters,
            List<Creator> comicCreators, List<Story> comicStories)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> comicCharacters,
            List<Creator> comicCreators, List<Story> comicStories)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> comicCharacters,
            List<Creator> comicCreators, List<Story> comicStories)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComicDetailsLoadingState value) loading,
    required TResult Function(_ComicDetailsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicDetailsLoadingState value)? loading,
    TResult? Function(_ComicDetailsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicDetailsLoadingState value)? loading,
    TResult Function(_ComicDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicDetailsStateCopyWith<$Res> {
  factory $ComicDetailsStateCopyWith(
          ComicDetailsState value, $Res Function(ComicDetailsState) then) =
      _$ComicDetailsStateCopyWithImpl<$Res, ComicDetailsState>;
}

/// @nodoc
class _$ComicDetailsStateCopyWithImpl<$Res, $Val extends ComicDetailsState>
    implements $ComicDetailsStateCopyWith<$Res> {
  _$ComicDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ComicDetailsLoadingStateCopyWith<$Res> {
  factory _$$_ComicDetailsLoadingStateCopyWith(
          _$_ComicDetailsLoadingState value,
          $Res Function(_$_ComicDetailsLoadingState) then) =
      __$$_ComicDetailsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ComicDetailsLoadingStateCopyWithImpl<$Res>
    extends _$ComicDetailsStateCopyWithImpl<$Res, _$_ComicDetailsLoadingState>
    implements _$$_ComicDetailsLoadingStateCopyWith<$Res> {
  __$$_ComicDetailsLoadingStateCopyWithImpl(_$_ComicDetailsLoadingState _value,
      $Res Function(_$_ComicDetailsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ComicDetailsLoadingState implements _ComicDetailsLoadingState {
  const _$_ComicDetailsLoadingState();

  @override
  String toString() {
    return 'ComicDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicDetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Character> comicCharacters,
            List<Creator> comicCreators, List<Story> comicStories)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> comicCharacters,
            List<Creator> comicCreators, List<Story> comicStories)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> comicCharacters,
            List<Creator> comicCreators, List<Story> comicStories)?
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
    required TResult Function(_ComicDetailsLoadingState value) loading,
    required TResult Function(_ComicDetailsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicDetailsLoadingState value)? loading,
    TResult? Function(_ComicDetailsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicDetailsLoadingState value)? loading,
    TResult Function(_ComicDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ComicDetailsLoadingState implements ComicDetailsState {
  const factory _ComicDetailsLoadingState() = _$_ComicDetailsLoadingState;
}

/// @nodoc
abstract class _$$_ComicDetailsLoadedStateCopyWith<$Res> {
  factory _$$_ComicDetailsLoadedStateCopyWith(_$_ComicDetailsLoadedState value,
          $Res Function(_$_ComicDetailsLoadedState) then) =
      __$$_ComicDetailsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Character> comicCharacters,
      List<Creator> comicCreators,
      List<Story> comicStories});
}

/// @nodoc
class __$$_ComicDetailsLoadedStateCopyWithImpl<$Res>
    extends _$ComicDetailsStateCopyWithImpl<$Res, _$_ComicDetailsLoadedState>
    implements _$$_ComicDetailsLoadedStateCopyWith<$Res> {
  __$$_ComicDetailsLoadedStateCopyWithImpl(_$_ComicDetailsLoadedState _value,
      $Res Function(_$_ComicDetailsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comicCharacters = null,
    Object? comicCreators = null,
    Object? comicStories = null,
  }) {
    return _then(_$_ComicDetailsLoadedState(
      comicCharacters: null == comicCharacters
          ? _value._comicCharacters
          : comicCharacters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      comicCreators: null == comicCreators
          ? _value._comicCreators
          : comicCreators // ignore: cast_nullable_to_non_nullable
              as List<Creator>,
      comicStories: null == comicStories
          ? _value._comicStories
          : comicStories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc

class _$_ComicDetailsLoadedState implements _ComicDetailsLoadedState {
  const _$_ComicDetailsLoadedState(
      {required final List<Character> comicCharacters,
      required final List<Creator> comicCreators,
      required final List<Story> comicStories})
      : _comicCharacters = comicCharacters,
        _comicCreators = comicCreators,
        _comicStories = comicStories;

  final List<Character> _comicCharacters;
  @override
  List<Character> get comicCharacters {
    if (_comicCharacters is EqualUnmodifiableListView) return _comicCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comicCharacters);
  }

  final List<Creator> _comicCreators;
  @override
  List<Creator> get comicCreators {
    if (_comicCreators is EqualUnmodifiableListView) return _comicCreators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comicCreators);
  }

  final List<Story> _comicStories;
  @override
  List<Story> get comicStories {
    if (_comicStories is EqualUnmodifiableListView) return _comicStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comicStories);
  }

  @override
  String toString() {
    return 'ComicDetailsState.loaded(comicCharacters: $comicCharacters, comicCreators: $comicCreators, comicStories: $comicStories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicDetailsLoadedState &&
            const DeepCollectionEquality()
                .equals(other._comicCharacters, _comicCharacters) &&
            const DeepCollectionEquality()
                .equals(other._comicCreators, _comicCreators) &&
            const DeepCollectionEquality()
                .equals(other._comicStories, _comicStories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_comicCharacters),
      const DeepCollectionEquality().hash(_comicCreators),
      const DeepCollectionEquality().hash(_comicStories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComicDetailsLoadedStateCopyWith<_$_ComicDetailsLoadedState>
      get copyWith =>
          __$$_ComicDetailsLoadedStateCopyWithImpl<_$_ComicDetailsLoadedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Character> comicCharacters,
            List<Creator> comicCreators, List<Story> comicStories)
        loaded,
  }) {
    return loaded(comicCharacters, comicCreators, comicStories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Character> comicCharacters,
            List<Creator> comicCreators, List<Story> comicStories)?
        loaded,
  }) {
    return loaded?.call(comicCharacters, comicCreators, comicStories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Character> comicCharacters,
            List<Creator> comicCreators, List<Story> comicStories)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(comicCharacters, comicCreators, comicStories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComicDetailsLoadingState value) loading,
    required TResult Function(_ComicDetailsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComicDetailsLoadingState value)? loading,
    TResult? Function(_ComicDetailsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComicDetailsLoadingState value)? loading,
    TResult Function(_ComicDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ComicDetailsLoadedState implements ComicDetailsState {
  const factory _ComicDetailsLoadedState(
      {required final List<Character> comicCharacters,
      required final List<Creator> comicCreators,
      required final List<Story> comicStories}) = _$_ComicDetailsLoadedState;

  List<Character> get comicCharacters;
  List<Creator> get comicCreators;
  List<Story> get comicStories;
  @JsonKey(ignore: true)
  _$$_ComicDetailsLoadedStateCopyWith<_$_ComicDetailsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
