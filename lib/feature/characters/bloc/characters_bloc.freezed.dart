// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFilter? filter) onPageOpened,
    required TResult Function(ApiFilter? filter) onMoreDataLoading,
    required TResult Function(Character character) onCharacterTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFilter? filter)? onPageOpened,
    TResult? Function(ApiFilter? filter)? onMoreDataLoading,
    TResult? Function(Character character)? onCharacterTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFilter? filter)? onPageOpened,
    TResult Function(ApiFilter? filter)? onMoreDataLoading,
    TResult Function(Character character)? onCharacterTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_CharactersMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_CharactersOnCharacterTappedEvent value)
        onCharacterTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CharactersMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_CharactersOnCharacterTappedEvent value)?
        onCharacterTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CharactersMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_CharactersOnCharacterTappedEvent value)?
        onCharacterTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res, CharactersEvent>;
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res, $Val extends CharactersEvent>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CharactersOnPageOpenedEventCopyWith<$Res> {
  factory _$$_CharactersOnPageOpenedEventCopyWith(
          _$_CharactersOnPageOpenedEvent value,
          $Res Function(_$_CharactersOnPageOpenedEvent) then) =
      __$$_CharactersOnPageOpenedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFilter? filter});
}

/// @nodoc
class __$$_CharactersOnPageOpenedEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res, _$_CharactersOnPageOpenedEvent>
    implements _$$_CharactersOnPageOpenedEventCopyWith<$Res> {
  __$$_CharactersOnPageOpenedEventCopyWithImpl(
      _$_CharactersOnPageOpenedEvent _value,
      $Res Function(_$_CharactersOnPageOpenedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$_CharactersOnPageOpenedEvent(
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ApiFilter?,
    ));
  }
}

/// @nodoc

class _$_CharactersOnPageOpenedEvent implements _CharactersOnPageOpenedEvent {
  const _$_CharactersOnPageOpenedEvent({required this.filter});

  @override
  final ApiFilter? filter;

  @override
  String toString() {
    return 'CharactersEvent.onPageOpened(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersOnPageOpenedEvent &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersOnPageOpenedEventCopyWith<_$_CharactersOnPageOpenedEvent>
      get copyWith => __$$_CharactersOnPageOpenedEventCopyWithImpl<
          _$_CharactersOnPageOpenedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFilter? filter) onPageOpened,
    required TResult Function(ApiFilter? filter) onMoreDataLoading,
    required TResult Function(Character character) onCharacterTapped,
  }) {
    return onPageOpened(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFilter? filter)? onPageOpened,
    TResult? Function(ApiFilter? filter)? onMoreDataLoading,
    TResult? Function(Character character)? onCharacterTapped,
  }) {
    return onPageOpened?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFilter? filter)? onPageOpened,
    TResult Function(ApiFilter? filter)? onMoreDataLoading,
    TResult Function(Character character)? onCharacterTapped,
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
    required TResult Function(_CharactersOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_CharactersMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_CharactersOnCharacterTappedEvent value)
        onCharacterTapped,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CharactersMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_CharactersOnCharacterTappedEvent value)?
        onCharacterTapped,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CharactersMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_CharactersOnCharacterTappedEvent value)?
        onCharacterTapped,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _CharactersOnPageOpenedEvent implements CharactersEvent {
  const factory _CharactersOnPageOpenedEvent(
      {required final ApiFilter? filter}) = _$_CharactersOnPageOpenedEvent;

  ApiFilter? get filter;
  @JsonKey(ignore: true)
  _$$_CharactersOnPageOpenedEventCopyWith<_$_CharactersOnPageOpenedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CharactersMoreDataLoadingEventCopyWith<$Res> {
  factory _$$_CharactersMoreDataLoadingEventCopyWith(
          _$_CharactersMoreDataLoadingEvent value,
          $Res Function(_$_CharactersMoreDataLoadingEvent) then) =
      __$$_CharactersMoreDataLoadingEventCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiFilter? filter});
}

/// @nodoc
class __$$_CharactersMoreDataLoadingEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res,
        _$_CharactersMoreDataLoadingEvent>
    implements _$$_CharactersMoreDataLoadingEventCopyWith<$Res> {
  __$$_CharactersMoreDataLoadingEventCopyWithImpl(
      _$_CharactersMoreDataLoadingEvent _value,
      $Res Function(_$_CharactersMoreDataLoadingEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$_CharactersMoreDataLoadingEvent(
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ApiFilter?,
    ));
  }
}

/// @nodoc

class _$_CharactersMoreDataLoadingEvent
    implements _CharactersMoreDataLoadingEvent {
  const _$_CharactersMoreDataLoadingEvent({required this.filter});

  @override
  final ApiFilter? filter;

  @override
  String toString() {
    return 'CharactersEvent.onMoreDataLoading(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersMoreDataLoadingEvent &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersMoreDataLoadingEventCopyWith<_$_CharactersMoreDataLoadingEvent>
      get copyWith => __$$_CharactersMoreDataLoadingEventCopyWithImpl<
          _$_CharactersMoreDataLoadingEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFilter? filter) onPageOpened,
    required TResult Function(ApiFilter? filter) onMoreDataLoading,
    required TResult Function(Character character) onCharacterTapped,
  }) {
    return onMoreDataLoading(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFilter? filter)? onPageOpened,
    TResult? Function(ApiFilter? filter)? onMoreDataLoading,
    TResult? Function(Character character)? onCharacterTapped,
  }) {
    return onMoreDataLoading?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFilter? filter)? onPageOpened,
    TResult Function(ApiFilter? filter)? onMoreDataLoading,
    TResult Function(Character character)? onCharacterTapped,
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
    required TResult Function(_CharactersOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_CharactersMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_CharactersOnCharacterTappedEvent value)
        onCharacterTapped,
  }) {
    return onMoreDataLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CharactersMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_CharactersOnCharacterTappedEvent value)?
        onCharacterTapped,
  }) {
    return onMoreDataLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CharactersMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_CharactersOnCharacterTappedEvent value)?
        onCharacterTapped,
    required TResult orElse(),
  }) {
    if (onMoreDataLoading != null) {
      return onMoreDataLoading(this);
    }
    return orElse();
  }
}

abstract class _CharactersMoreDataLoadingEvent implements CharactersEvent {
  const factory _CharactersMoreDataLoadingEvent(
      {required final ApiFilter? filter}) = _$_CharactersMoreDataLoadingEvent;

  ApiFilter? get filter;
  @JsonKey(ignore: true)
  _$$_CharactersMoreDataLoadingEventCopyWith<_$_CharactersMoreDataLoadingEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CharactersOnCharacterTappedEventCopyWith<$Res> {
  factory _$$_CharactersOnCharacterTappedEventCopyWith(
          _$_CharactersOnCharacterTappedEvent value,
          $Res Function(_$_CharactersOnCharacterTappedEvent) then) =
      __$$_CharactersOnCharacterTappedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$_CharactersOnCharacterTappedEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res,
        _$_CharactersOnCharacterTappedEvent>
    implements _$$_CharactersOnCharacterTappedEventCopyWith<$Res> {
  __$$_CharactersOnCharacterTappedEventCopyWithImpl(
      _$_CharactersOnCharacterTappedEvent _value,
      $Res Function(_$_CharactersOnCharacterTappedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$_CharactersOnCharacterTappedEvent(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

/// @nodoc

class _$_CharactersOnCharacterTappedEvent
    implements _CharactersOnCharacterTappedEvent {
  const _$_CharactersOnCharacterTappedEvent({required this.character});

  @override
  final Character character;

  @override
  String toString() {
    return 'CharactersEvent.onCharacterTapped(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersOnCharacterTappedEvent &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersOnCharacterTappedEventCopyWith<
          _$_CharactersOnCharacterTappedEvent>
      get copyWith => __$$_CharactersOnCharacterTappedEventCopyWithImpl<
          _$_CharactersOnCharacterTappedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApiFilter? filter) onPageOpened,
    required TResult Function(ApiFilter? filter) onMoreDataLoading,
    required TResult Function(Character character) onCharacterTapped,
  }) {
    return onCharacterTapped(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApiFilter? filter)? onPageOpened,
    TResult? Function(ApiFilter? filter)? onMoreDataLoading,
    TResult? Function(Character character)? onCharacterTapped,
  }) {
    return onCharacterTapped?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApiFilter? filter)? onPageOpened,
    TResult Function(ApiFilter? filter)? onMoreDataLoading,
    TResult Function(Character character)? onCharacterTapped,
    required TResult orElse(),
  }) {
    if (onCharacterTapped != null) {
      return onCharacterTapped(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersOnPageOpenedEvent value) onPageOpened,
    required TResult Function(_CharactersMoreDataLoadingEvent value)
        onMoreDataLoading,
    required TResult Function(_CharactersOnCharacterTappedEvent value)
        onCharacterTapped,
  }) {
    return onCharacterTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CharactersMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult? Function(_CharactersOnCharacterTappedEvent value)?
        onCharacterTapped,
  }) {
    return onCharacterTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CharactersMoreDataLoadingEvent value)? onMoreDataLoading,
    TResult Function(_CharactersOnCharacterTappedEvent value)?
        onCharacterTapped,
    required TResult orElse(),
  }) {
    if (onCharacterTapped != null) {
      return onCharacterTapped(this);
    }
    return orElse();
  }
}

abstract class _CharactersOnCharacterTappedEvent implements CharactersEvent {
  const factory _CharactersOnCharacterTappedEvent(
          {required final Character character}) =
      _$_CharactersOnCharacterTappedEvent;

  Character get character;
  @JsonKey(ignore: true)
  _$$_CharactersOnCharacterTappedEventCopyWith<
          _$_CharactersOnCharacterTappedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Character> characters)
        loaded,
    required TResult Function(List<Character> characters) moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool canLoadMore, int lastOffset, List<Character> characters)?
        loaded,
    TResult? Function(List<Character> characters)? moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool canLoadMore, int lastOffset, List<Character> characters)?
        loaded,
    TResult Function(List<Character> characters)? moreLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersLoadingState value) loading,
    required TResult Function(_CharactersLoadedState value) loaded,
    required TResult Function(_CharactersMoreLoadingState value) moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersLoadingState value)? loading,
    TResult? Function(_CharactersLoadedState value)? loaded,
    TResult? Function(_CharactersMoreLoadingState value)? moreLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersLoadingState value)? loading,
    TResult Function(_CharactersLoadedState value)? loaded,
    TResult Function(_CharactersMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res, CharactersState>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res, $Val extends CharactersState>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CharactersLoadingStateCopyWith<$Res> {
  factory _$$_CharactersLoadingStateCopyWith(_$_CharactersLoadingState value,
          $Res Function(_$_CharactersLoadingState) then) =
      __$$_CharactersLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CharactersLoadingStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$_CharactersLoadingState>
    implements _$$_CharactersLoadingStateCopyWith<$Res> {
  __$$_CharactersLoadingStateCopyWithImpl(_$_CharactersLoadingState _value,
      $Res Function(_$_CharactersLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CharactersLoadingState implements _CharactersLoadingState {
  const _$_CharactersLoadingState();

  @override
  String toString() {
    return 'CharactersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Character> characters)
        loaded,
    required TResult Function(List<Character> characters) moreLoading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool canLoadMore, int lastOffset, List<Character> characters)?
        loaded,
    TResult? Function(List<Character> characters)? moreLoading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool canLoadMore, int lastOffset, List<Character> characters)?
        loaded,
    TResult Function(List<Character> characters)? moreLoading,
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
    required TResult Function(_CharactersLoadingState value) loading,
    required TResult Function(_CharactersLoadedState value) loaded,
    required TResult Function(_CharactersMoreLoadingState value) moreLoading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersLoadingState value)? loading,
    TResult? Function(_CharactersLoadedState value)? loaded,
    TResult? Function(_CharactersMoreLoadingState value)? moreLoading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersLoadingState value)? loading,
    TResult Function(_CharactersLoadedState value)? loaded,
    TResult Function(_CharactersMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CharactersLoadingState implements CharactersState {
  const factory _CharactersLoadingState() = _$_CharactersLoadingState;
}

/// @nodoc
abstract class _$$_CharactersLoadedStateCopyWith<$Res> {
  factory _$$_CharactersLoadedStateCopyWith(_$_CharactersLoadedState value,
          $Res Function(_$_CharactersLoadedState) then) =
      __$$_CharactersLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool canLoadMore, int lastOffset, List<Character> characters});
}

/// @nodoc
class __$$_CharactersLoadedStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$_CharactersLoadedState>
    implements _$$_CharactersLoadedStateCopyWith<$Res> {
  __$$_CharactersLoadedStateCopyWithImpl(_$_CharactersLoadedState _value,
      $Res Function(_$_CharactersLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canLoadMore = null,
    Object? lastOffset = null,
    Object? characters = null,
  }) {
    return _then(_$_CharactersLoadedState(
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      lastOffset: null == lastOffset
          ? _value.lastOffset
          : lastOffset // ignore: cast_nullable_to_non_nullable
              as int,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$_CharactersLoadedState implements _CharactersLoadedState {
  const _$_CharactersLoadedState(
      {required this.canLoadMore,
      required this.lastOffset,
      required final List<Character> characters})
      : _characters = characters;

  @override
  final bool canLoadMore;
  @override
  final int lastOffset;
  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'CharactersState.loaded(canLoadMore: $canLoadMore, lastOffset: $lastOffset, characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersLoadedState &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore) &&
            (identical(other.lastOffset, lastOffset) ||
                other.lastOffset == lastOffset) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canLoadMore, lastOffset,
      const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersLoadedStateCopyWith<_$_CharactersLoadedState> get copyWith =>
      __$$_CharactersLoadedStateCopyWithImpl<_$_CharactersLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Character> characters)
        loaded,
    required TResult Function(List<Character> characters) moreLoading,
  }) {
    return loaded(canLoadMore, lastOffset, characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool canLoadMore, int lastOffset, List<Character> characters)?
        loaded,
    TResult? Function(List<Character> characters)? moreLoading,
  }) {
    return loaded?.call(canLoadMore, lastOffset, characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool canLoadMore, int lastOffset, List<Character> characters)?
        loaded,
    TResult Function(List<Character> characters)? moreLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(canLoadMore, lastOffset, characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersLoadingState value) loading,
    required TResult Function(_CharactersLoadedState value) loaded,
    required TResult Function(_CharactersMoreLoadingState value) moreLoading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersLoadingState value)? loading,
    TResult? Function(_CharactersLoadedState value)? loaded,
    TResult? Function(_CharactersMoreLoadingState value)? moreLoading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersLoadingState value)? loading,
    TResult Function(_CharactersLoadedState value)? loaded,
    TResult Function(_CharactersMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CharactersLoadedState implements CharactersState {
  const factory _CharactersLoadedState(
      {required final bool canLoadMore,
      required final int lastOffset,
      required final List<Character> characters}) = _$_CharactersLoadedState;

  bool get canLoadMore;
  int get lastOffset;
  List<Character> get characters;
  @JsonKey(ignore: true)
  _$$_CharactersLoadedStateCopyWith<_$_CharactersLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CharactersMoreLoadingStateCopyWith<$Res> {
  factory _$$_CharactersMoreLoadingStateCopyWith(
          _$_CharactersMoreLoadingState value,
          $Res Function(_$_CharactersMoreLoadingState) then) =
      __$$_CharactersMoreLoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Character> characters});
}

/// @nodoc
class __$$_CharactersMoreLoadingStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res, _$_CharactersMoreLoadingState>
    implements _$$_CharactersMoreLoadingStateCopyWith<$Res> {
  __$$_CharactersMoreLoadingStateCopyWithImpl(
      _$_CharactersMoreLoadingState _value,
      $Res Function(_$_CharactersMoreLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$_CharactersMoreLoadingState(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$_CharactersMoreLoadingState implements _CharactersMoreLoadingState {
  const _$_CharactersMoreLoadingState(
      {required final List<Character> characters})
      : _characters = characters;

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  String toString() {
    return 'CharactersState.moreLoading(characters: $characters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersMoreLoadingState &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_characters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharactersMoreLoadingStateCopyWith<_$_CharactersMoreLoadingState>
      get copyWith => __$$_CharactersMoreLoadingStateCopyWithImpl<
          _$_CharactersMoreLoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            bool canLoadMore, int lastOffset, List<Character> characters)
        loaded,
    required TResult Function(List<Character> characters) moreLoading,
  }) {
    return moreLoading(characters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            bool canLoadMore, int lastOffset, List<Character> characters)?
        loaded,
    TResult? Function(List<Character> characters)? moreLoading,
  }) {
    return moreLoading?.call(characters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            bool canLoadMore, int lastOffset, List<Character> characters)?
        loaded,
    TResult Function(List<Character> characters)? moreLoading,
    required TResult orElse(),
  }) {
    if (moreLoading != null) {
      return moreLoading(characters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersLoadingState value) loading,
    required TResult Function(_CharactersLoadedState value) loaded,
    required TResult Function(_CharactersMoreLoadingState value) moreLoading,
  }) {
    return moreLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersLoadingState value)? loading,
    TResult? Function(_CharactersLoadedState value)? loaded,
    TResult? Function(_CharactersMoreLoadingState value)? moreLoading,
  }) {
    return moreLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersLoadingState value)? loading,
    TResult Function(_CharactersLoadedState value)? loaded,
    TResult Function(_CharactersMoreLoadingState value)? moreLoading,
    required TResult orElse(),
  }) {
    if (moreLoading != null) {
      return moreLoading(this);
    }
    return orElse();
  }
}

abstract class _CharactersMoreLoadingState implements CharactersState {
  const factory _CharactersMoreLoadingState(
          {required final List<Character> characters}) =
      _$_CharactersMoreLoadingState;

  List<Character> get characters;
  @JsonKey(ignore: true)
  _$$_CharactersMoreLoadingStateCopyWith<_$_CharactersMoreLoadingState>
      get copyWith => throw _privateConstructorUsedError;
}
