// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) onPageOpened,
    required TResult Function(Comic comic) onComicTapped,
    required TResult Function(Character character)
        onSeeAllCharacterComicsTapped,
    required TResult Function(Character character)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(Character character)
        onSeeAllCharacterSeriesTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? onPageOpened,
    TResult? Function(Comic comic)? onComicTapped,
    TResult? Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult? Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult? Function(Character character)? onSeeAllCharacterSeriesTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? onPageOpened,
    TResult Function(Comic comic)? onComicTapped,
    TResult Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult Function(Character character)? onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterDetailsOnPageOpenedEvent value)
        onPageOpened,
    required TResult Function(_CharacterDetailsOnComicTappedEvent value)
        onComicTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)
        onSeeAllCharacterComicsTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)
        onSeeAllCharacterSeriesTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailsEventCopyWith<$Res> {
  factory $CharacterDetailsEventCopyWith(CharacterDetailsEvent value,
          $Res Function(CharacterDetailsEvent) then) =
      _$CharacterDetailsEventCopyWithImpl<$Res, CharacterDetailsEvent>;
}

/// @nodoc
class _$CharacterDetailsEventCopyWithImpl<$Res,
        $Val extends CharacterDetailsEvent>
    implements $CharacterDetailsEventCopyWith<$Res> {
  _$CharacterDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CharacterDetailsOnPageOpenedEventCopyWith<$Res> {
  factory _$$_CharacterDetailsOnPageOpenedEventCopyWith(
          _$_CharacterDetailsOnPageOpenedEvent value,
          $Res Function(_$_CharacterDetailsOnPageOpenedEvent) then) =
      __$$_CharacterDetailsOnPageOpenedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$_CharacterDetailsOnPageOpenedEventCopyWithImpl<$Res>
    extends _$CharacterDetailsEventCopyWithImpl<$Res,
        _$_CharacterDetailsOnPageOpenedEvent>
    implements _$$_CharacterDetailsOnPageOpenedEventCopyWith<$Res> {
  __$$_CharacterDetailsOnPageOpenedEventCopyWithImpl(
      _$_CharacterDetailsOnPageOpenedEvent _value,
      $Res Function(_$_CharacterDetailsOnPageOpenedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$_CharacterDetailsOnPageOpenedEvent(
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

class _$_CharacterDetailsOnPageOpenedEvent
    implements _CharacterDetailsOnPageOpenedEvent {
  const _$_CharacterDetailsOnPageOpenedEvent({required this.character});

  @override
  final Character character;

  @override
  String toString() {
    return 'CharacterDetailsEvent.onPageOpened(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterDetailsOnPageOpenedEvent &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterDetailsOnPageOpenedEventCopyWith<
          _$_CharacterDetailsOnPageOpenedEvent>
      get copyWith => __$$_CharacterDetailsOnPageOpenedEventCopyWithImpl<
          _$_CharacterDetailsOnPageOpenedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) onPageOpened,
    required TResult Function(Comic comic) onComicTapped,
    required TResult Function(Character character)
        onSeeAllCharacterComicsTapped,
    required TResult Function(Character character)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(Character character)
        onSeeAllCharacterSeriesTapped,
  }) {
    return onPageOpened(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? onPageOpened,
    TResult? Function(Comic comic)? onComicTapped,
    TResult? Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult? Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult? Function(Character character)? onSeeAllCharacterSeriesTapped,
  }) {
    return onPageOpened?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? onPageOpened,
    TResult Function(Comic comic)? onComicTapped,
    TResult Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult Function(Character character)? onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterDetailsOnPageOpenedEvent value)
        onPageOpened,
    required TResult Function(_CharacterDetailsOnComicTappedEvent value)
        onComicTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)
        onSeeAllCharacterComicsTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)
        onSeeAllCharacterSeriesTapped,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _CharacterDetailsOnPageOpenedEvent
    implements CharacterDetailsEvent {
  const factory _CharacterDetailsOnPageOpenedEvent(
          {required final Character character}) =
      _$_CharacterDetailsOnPageOpenedEvent;

  Character get character;
  @JsonKey(ignore: true)
  _$$_CharacterDetailsOnPageOpenedEventCopyWith<
          _$_CharacterDetailsOnPageOpenedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CharacterDetailsOnComicTappedEventCopyWith<$Res> {
  factory _$$_CharacterDetailsOnComicTappedEventCopyWith(
          _$_CharacterDetailsOnComicTappedEvent value,
          $Res Function(_$_CharacterDetailsOnComicTappedEvent) then) =
      __$$_CharacterDetailsOnComicTappedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Comic comic});

  $ComicCopyWith<$Res> get comic;
}

/// @nodoc
class __$$_CharacterDetailsOnComicTappedEventCopyWithImpl<$Res>
    extends _$CharacterDetailsEventCopyWithImpl<$Res,
        _$_CharacterDetailsOnComicTappedEvent>
    implements _$$_CharacterDetailsOnComicTappedEventCopyWith<$Res> {
  __$$_CharacterDetailsOnComicTappedEventCopyWithImpl(
      _$_CharacterDetailsOnComicTappedEvent _value,
      $Res Function(_$_CharacterDetailsOnComicTappedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comic = null,
  }) {
    return _then(_$_CharacterDetailsOnComicTappedEvent(
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

class _$_CharacterDetailsOnComicTappedEvent
    implements _CharacterDetailsOnComicTappedEvent {
  const _$_CharacterDetailsOnComicTappedEvent({required this.comic});

  @override
  final Comic comic;

  @override
  String toString() {
    return 'CharacterDetailsEvent.onComicTapped(comic: $comic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterDetailsOnComicTappedEvent &&
            (identical(other.comic, comic) || other.comic == comic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterDetailsOnComicTappedEventCopyWith<
          _$_CharacterDetailsOnComicTappedEvent>
      get copyWith => __$$_CharacterDetailsOnComicTappedEventCopyWithImpl<
          _$_CharacterDetailsOnComicTappedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) onPageOpened,
    required TResult Function(Comic comic) onComicTapped,
    required TResult Function(Character character)
        onSeeAllCharacterComicsTapped,
    required TResult Function(Character character)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(Character character)
        onSeeAllCharacterSeriesTapped,
  }) {
    return onComicTapped(comic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? onPageOpened,
    TResult? Function(Comic comic)? onComicTapped,
    TResult? Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult? Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult? Function(Character character)? onSeeAllCharacterSeriesTapped,
  }) {
    return onComicTapped?.call(comic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? onPageOpened,
    TResult Function(Comic comic)? onComicTapped,
    TResult Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult Function(Character character)? onSeeAllCharacterSeriesTapped,
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
    required TResult Function(_CharacterDetailsOnPageOpenedEvent value)
        onPageOpened,
    required TResult Function(_CharacterDetailsOnComicTappedEvent value)
        onComicTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)
        onSeeAllCharacterComicsTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)
        onSeeAllCharacterSeriesTapped,
  }) {
    return onComicTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
  }) {
    return onComicTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) {
    if (onComicTapped != null) {
      return onComicTapped(this);
    }
    return orElse();
  }
}

abstract class _CharacterDetailsOnComicTappedEvent
    implements CharacterDetailsEvent {
  const factory _CharacterDetailsOnComicTappedEvent(
      {required final Comic comic}) = _$_CharacterDetailsOnComicTappedEvent;

  Comic get comic;
  @JsonKey(ignore: true)
  _$$_CharacterDetailsOnComicTappedEventCopyWith<
          _$_CharacterDetailsOnComicTappedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CharacterDetailsOnSeeAllCharacterComicsTappedEventCopyWith<
    $Res> {
  factory _$$_CharacterDetailsOnSeeAllCharacterComicsTappedEventCopyWith(
          _$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent value,
          $Res Function(_$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent)
              then) =
      __$$_CharacterDetailsOnSeeAllCharacterComicsTappedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$_CharacterDetailsOnSeeAllCharacterComicsTappedEventCopyWithImpl<$Res>
    extends _$CharacterDetailsEventCopyWithImpl<$Res,
        _$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent>
    implements
        _$$_CharacterDetailsOnSeeAllCharacterComicsTappedEventCopyWith<$Res> {
  __$$_CharacterDetailsOnSeeAllCharacterComicsTappedEventCopyWithImpl(
      _$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent _value,
      $Res Function(_$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent(
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

class _$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent
    implements _CharacterDetailsOnSeeAllCharacterComicsTappedEvent {
  const _$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent(
      {required this.character});

  @override
  final Character character;

  @override
  String toString() {
    return 'CharacterDetailsEvent.onSeeAllCharacterComicsTapped(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterDetailsOnSeeAllCharacterComicsTappedEventCopyWith<
          _$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent>
      get copyWith =>
          __$$_CharacterDetailsOnSeeAllCharacterComicsTappedEventCopyWithImpl<
                  _$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) onPageOpened,
    required TResult Function(Comic comic) onComicTapped,
    required TResult Function(Character character)
        onSeeAllCharacterComicsTapped,
    required TResult Function(Character character)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(Character character)
        onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterComicsTapped(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? onPageOpened,
    TResult? Function(Comic comic)? onComicTapped,
    TResult? Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult? Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult? Function(Character character)? onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterComicsTapped?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? onPageOpened,
    TResult Function(Comic comic)? onComicTapped,
    TResult Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult Function(Character character)? onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) {
    if (onSeeAllCharacterComicsTapped != null) {
      return onSeeAllCharacterComicsTapped(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterDetailsOnPageOpenedEvent value)
        onPageOpened,
    required TResult Function(_CharacterDetailsOnComicTappedEvent value)
        onComicTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)
        onSeeAllCharacterComicsTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)
        onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterComicsTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterComicsTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) {
    if (onSeeAllCharacterComicsTapped != null) {
      return onSeeAllCharacterComicsTapped(this);
    }
    return orElse();
  }
}

abstract class _CharacterDetailsOnSeeAllCharacterComicsTappedEvent
    implements CharacterDetailsEvent {
  const factory _CharacterDetailsOnSeeAllCharacterComicsTappedEvent(
          {required final Character character}) =
      _$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent;

  Character get character;
  @JsonKey(ignore: true)
  _$$_CharacterDetailsOnSeeAllCharacterComicsTappedEventCopyWith<
          _$_CharacterDetailsOnSeeAllCharacterComicsTappedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CharacterDetailsOnSeeAllCharacterStoriesTappedEventCopyWith<
    $Res> {
  factory _$$_CharacterDetailsOnSeeAllCharacterStoriesTappedEventCopyWith(
          _$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value,
          $Res Function(_$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent)
              then) =
      __$$_CharacterDetailsOnSeeAllCharacterStoriesTappedEventCopyWithImpl<
          $Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$_CharacterDetailsOnSeeAllCharacterStoriesTappedEventCopyWithImpl<$Res>
    extends _$CharacterDetailsEventCopyWithImpl<$Res,
        _$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent>
    implements
        _$$_CharacterDetailsOnSeeAllCharacterStoriesTappedEventCopyWith<$Res> {
  __$$_CharacterDetailsOnSeeAllCharacterStoriesTappedEventCopyWithImpl(
      _$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent _value,
      $Res Function(_$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent(
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

class _$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent
    implements _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent {
  const _$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent(
      {required this.character});

  @override
  final Character character;

  @override
  String toString() {
    return 'CharacterDetailsEvent.onSeeAllCharacterStoriesTapped(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterDetailsOnSeeAllCharacterStoriesTappedEventCopyWith<
          _$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent>
      get copyWith =>
          __$$_CharacterDetailsOnSeeAllCharacterStoriesTappedEventCopyWithImpl<
                  _$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) onPageOpened,
    required TResult Function(Comic comic) onComicTapped,
    required TResult Function(Character character)
        onSeeAllCharacterComicsTapped,
    required TResult Function(Character character)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(Character character)
        onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterStoriesTapped(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? onPageOpened,
    TResult? Function(Comic comic)? onComicTapped,
    TResult? Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult? Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult? Function(Character character)? onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterStoriesTapped?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? onPageOpened,
    TResult Function(Comic comic)? onComicTapped,
    TResult Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult Function(Character character)? onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) {
    if (onSeeAllCharacterStoriesTapped != null) {
      return onSeeAllCharacterStoriesTapped(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterDetailsOnPageOpenedEvent value)
        onPageOpened,
    required TResult Function(_CharacterDetailsOnComicTappedEvent value)
        onComicTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)
        onSeeAllCharacterComicsTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)
        onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterStoriesTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterStoriesTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) {
    if (onSeeAllCharacterStoriesTapped != null) {
      return onSeeAllCharacterStoriesTapped(this);
    }
    return orElse();
  }
}

abstract class _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent
    implements CharacterDetailsEvent {
  const factory _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent(
          {required final Character character}) =
      _$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent;

  Character get character;
  @JsonKey(ignore: true)
  _$$_CharacterDetailsOnSeeAllCharacterStoriesTappedEventCopyWith<
          _$_CharacterDetailsOnSeeAllCharacterStoriesTappedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CharacterDetailsOnSeeAllCharacterSeriesTappedEventCopyWith<
    $Res> {
  factory _$$_CharacterDetailsOnSeeAllCharacterSeriesTappedEventCopyWith(
          _$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value,
          $Res Function(_$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent)
              then) =
      __$$_CharacterDetailsOnSeeAllCharacterSeriesTappedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$_CharacterDetailsOnSeeAllCharacterSeriesTappedEventCopyWithImpl<$Res>
    extends _$CharacterDetailsEventCopyWithImpl<$Res,
        _$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent>
    implements
        _$$_CharacterDetailsOnSeeAllCharacterSeriesTappedEventCopyWith<$Res> {
  __$$_CharacterDetailsOnSeeAllCharacterSeriesTappedEventCopyWithImpl(
      _$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent _value,
      $Res Function(_$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent(
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

class _$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent
    implements _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent {
  const _$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent(
      {required this.character});

  @override
  final Character character;

  @override
  String toString() {
    return 'CharacterDetailsEvent.onSeeAllCharacterSeriesTapped(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterDetailsOnSeeAllCharacterSeriesTappedEventCopyWith<
          _$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent>
      get copyWith =>
          __$$_CharacterDetailsOnSeeAllCharacterSeriesTappedEventCopyWithImpl<
                  _$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) onPageOpened,
    required TResult Function(Comic comic) onComicTapped,
    required TResult Function(Character character)
        onSeeAllCharacterComicsTapped,
    required TResult Function(Character character)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(Character character)
        onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterSeriesTapped(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? onPageOpened,
    TResult? Function(Comic comic)? onComicTapped,
    TResult? Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult? Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult? Function(Character character)? onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterSeriesTapped?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? onPageOpened,
    TResult Function(Comic comic)? onComicTapped,
    TResult Function(Character character)? onSeeAllCharacterComicsTapped,
    TResult Function(Character character)? onSeeAllCharacterStoriesTapped,
    TResult Function(Character character)? onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) {
    if (onSeeAllCharacterSeriesTapped != null) {
      return onSeeAllCharacterSeriesTapped(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterDetailsOnPageOpenedEvent value)
        onPageOpened,
    required TResult Function(_CharacterDetailsOnComicTappedEvent value)
        onComicTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)
        onSeeAllCharacterComicsTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)
        onSeeAllCharacterStoriesTapped,
    required TResult Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)
        onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterSeriesTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult? Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult? Function(
            _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
  }) {
    return onSeeAllCharacterSeriesTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterDetailsOnPageOpenedEvent value)? onPageOpened,
    TResult Function(_CharacterDetailsOnComicTappedEvent value)? onComicTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterComicsTappedEvent value)?
        onSeeAllCharacterComicsTapped,
    TResult Function(
            _CharacterDetailsOnSeeAllCharacterStoriesTappedEvent value)?
        onSeeAllCharacterStoriesTapped,
    TResult Function(_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent value)?
        onSeeAllCharacterSeriesTapped,
    required TResult orElse(),
  }) {
    if (onSeeAllCharacterSeriesTapped != null) {
      return onSeeAllCharacterSeriesTapped(this);
    }
    return orElse();
  }
}

abstract class _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent
    implements CharacterDetailsEvent {
  const factory _CharacterDetailsOnSeeAllCharacterSeriesTappedEvent(
          {required final Character character}) =
      _$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent;

  Character get character;
  @JsonKey(ignore: true)
  _$$_CharacterDetailsOnSeeAllCharacterSeriesTappedEventCopyWith<
          _$_CharacterDetailsOnSeeAllCharacterSeriesTappedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Comic> characterComics,
            List<Series> characterSeries, List<Story> characterStories)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Comic> characterComics, List<Series> characterSeries,
            List<Story> characterStories)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Comic> characterComics, List<Series> characterSeries,
            List<Story> characterStories)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterDetailsLoadingState value) loading,
    required TResult Function(_CharacterDetailsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterDetailsLoadingState value)? loading,
    TResult? Function(_CharacterDetailsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterDetailsLoadingState value)? loading,
    TResult Function(_CharacterDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailsStateCopyWith<$Res> {
  factory $CharacterDetailsStateCopyWith(CharacterDetailsState value,
          $Res Function(CharacterDetailsState) then) =
      _$CharacterDetailsStateCopyWithImpl<$Res, CharacterDetailsState>;
}

/// @nodoc
class _$CharacterDetailsStateCopyWithImpl<$Res,
        $Val extends CharacterDetailsState>
    implements $CharacterDetailsStateCopyWith<$Res> {
  _$CharacterDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CharacterDetailsLoadingStateCopyWith<$Res> {
  factory _$$_CharacterDetailsLoadingStateCopyWith(
          _$_CharacterDetailsLoadingState value,
          $Res Function(_$_CharacterDetailsLoadingState) then) =
      __$$_CharacterDetailsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CharacterDetailsLoadingStateCopyWithImpl<$Res>
    extends _$CharacterDetailsStateCopyWithImpl<$Res,
        _$_CharacterDetailsLoadingState>
    implements _$$_CharacterDetailsLoadingStateCopyWith<$Res> {
  __$$_CharacterDetailsLoadingStateCopyWithImpl(
      _$_CharacterDetailsLoadingState _value,
      $Res Function(_$_CharacterDetailsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CharacterDetailsLoadingState implements _CharacterDetailsLoadingState {
  const _$_CharacterDetailsLoadingState();

  @override
  String toString() {
    return 'CharacterDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterDetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Comic> characterComics,
            List<Series> characterSeries, List<Story> characterStories)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Comic> characterComics, List<Series> characterSeries,
            List<Story> characterStories)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Comic> characterComics, List<Series> characterSeries,
            List<Story> characterStories)?
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
    required TResult Function(_CharacterDetailsLoadingState value) loading,
    required TResult Function(_CharacterDetailsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterDetailsLoadingState value)? loading,
    TResult? Function(_CharacterDetailsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterDetailsLoadingState value)? loading,
    TResult Function(_CharacterDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CharacterDetailsLoadingState implements CharacterDetailsState {
  const factory _CharacterDetailsLoadingState() =
      _$_CharacterDetailsLoadingState;
}

/// @nodoc
abstract class _$$_CharacterDetailsLoadedStateCopyWith<$Res> {
  factory _$$_CharacterDetailsLoadedStateCopyWith(
          _$_CharacterDetailsLoadedState value,
          $Res Function(_$_CharacterDetailsLoadedState) then) =
      __$$_CharacterDetailsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Comic> characterComics,
      List<Series> characterSeries,
      List<Story> characterStories});
}

/// @nodoc
class __$$_CharacterDetailsLoadedStateCopyWithImpl<$Res>
    extends _$CharacterDetailsStateCopyWithImpl<$Res,
        _$_CharacterDetailsLoadedState>
    implements _$$_CharacterDetailsLoadedStateCopyWith<$Res> {
  __$$_CharacterDetailsLoadedStateCopyWithImpl(
      _$_CharacterDetailsLoadedState _value,
      $Res Function(_$_CharacterDetailsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterComics = null,
    Object? characterSeries = null,
    Object? characterStories = null,
  }) {
    return _then(_$_CharacterDetailsLoadedState(
      characterComics: null == characterComics
          ? _value._characterComics
          : characterComics // ignore: cast_nullable_to_non_nullable
              as List<Comic>,
      characterSeries: null == characterSeries
          ? _value._characterSeries
          : characterSeries // ignore: cast_nullable_to_non_nullable
              as List<Series>,
      characterStories: null == characterStories
          ? _value._characterStories
          : characterStories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc

class _$_CharacterDetailsLoadedState implements _CharacterDetailsLoadedState {
  const _$_CharacterDetailsLoadedState(
      {required final List<Comic> characterComics,
      required final List<Series> characterSeries,
      required final List<Story> characterStories})
      : _characterComics = characterComics,
        _characterSeries = characterSeries,
        _characterStories = characterStories;

  final List<Comic> _characterComics;
  @override
  List<Comic> get characterComics {
    if (_characterComics is EqualUnmodifiableListView) return _characterComics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterComics);
  }

  final List<Series> _characterSeries;
  @override
  List<Series> get characterSeries {
    if (_characterSeries is EqualUnmodifiableListView) return _characterSeries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterSeries);
  }

  final List<Story> _characterStories;
  @override
  List<Story> get characterStories {
    if (_characterStories is EqualUnmodifiableListView)
      return _characterStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterStories);
  }

  @override
  String toString() {
    return 'CharacterDetailsState.loaded(characterComics: $characterComics, characterSeries: $characterSeries, characterStories: $characterStories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterDetailsLoadedState &&
            const DeepCollectionEquality()
                .equals(other._characterComics, _characterComics) &&
            const DeepCollectionEquality()
                .equals(other._characterSeries, _characterSeries) &&
            const DeepCollectionEquality()
                .equals(other._characterStories, _characterStories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characterComics),
      const DeepCollectionEquality().hash(_characterSeries),
      const DeepCollectionEquality().hash(_characterStories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterDetailsLoadedStateCopyWith<_$_CharacterDetailsLoadedState>
      get copyWith => __$$_CharacterDetailsLoadedStateCopyWithImpl<
          _$_CharacterDetailsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Comic> characterComics,
            List<Series> characterSeries, List<Story> characterStories)
        loaded,
  }) {
    return loaded(characterComics, characterSeries, characterStories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Comic> characterComics, List<Series> characterSeries,
            List<Story> characterStories)?
        loaded,
  }) {
    return loaded?.call(characterComics, characterSeries, characterStories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Comic> characterComics, List<Series> characterSeries,
            List<Story> characterStories)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characterComics, characterSeries, characterStories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterDetailsLoadingState value) loading,
    required TResult Function(_CharacterDetailsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterDetailsLoadingState value)? loading,
    TResult? Function(_CharacterDetailsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterDetailsLoadingState value)? loading,
    TResult Function(_CharacterDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CharacterDetailsLoadedState implements CharacterDetailsState {
  const factory _CharacterDetailsLoadedState(
          {required final List<Comic> characterComics,
          required final List<Series> characterSeries,
          required final List<Story> characterStories}) =
      _$_CharacterDetailsLoadedState;

  List<Comic> get characterComics;
  List<Series> get characterSeries;
  List<Story> get characterStories;
  @JsonKey(ignore: true)
  _$$_CharacterDetailsLoadedStateCopyWith<_$_CharacterDetailsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
