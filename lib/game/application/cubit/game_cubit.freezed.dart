// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameState {
  int get score => throw _privateConstructorUsedError;
  List<GamePlatform> get platforms => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, List<GamePlatform> platforms) initial,
    required TResult Function(int score, List<GamePlatform> platforms) play,
    required TResult Function(int score, List<GamePlatform> platforms) pause,
    required TResult Function(int score, List<GamePlatform> platforms) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int score, List<GamePlatform> platforms)? initial,
    TResult? Function(int score, List<GamePlatform> platforms)? play,
    TResult? Function(int score, List<GamePlatform> platforms)? pause,
    TResult? Function(int score, List<GamePlatform> platforms)? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, List<GamePlatform> platforms)? initial,
    TResult Function(int score, List<GamePlatform> platforms)? play,
    TResult Function(int score, List<GamePlatform> platforms)? pause,
    TResult Function(int score, List<GamePlatform> platforms)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_GameOver value) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_GameOver value)? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call({int score, List<GamePlatform> platforms});
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? platforms = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      platforms: null == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<GamePlatform>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int score, List<GamePlatform> platforms});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? platforms = null,
  }) {
    return _then(_$InitialImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      platforms: null == platforms
          ? _value._platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<GamePlatform>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.score = 0, required final List<GamePlatform> platforms})
      : _platforms = platforms;

  @override
  @JsonKey()
  final int score;
  final List<GamePlatform> _platforms;
  @override
  List<GamePlatform> get platforms {
    if (_platforms is EqualUnmodifiableListView) return _platforms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_platforms);
  }

  @override
  String toString() {
    return 'GameState.initial(score: $score, platforms: $platforms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality()
                .equals(other._platforms, _platforms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, score, const DeepCollectionEquality().hash(_platforms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, List<GamePlatform> platforms) initial,
    required TResult Function(int score, List<GamePlatform> platforms) play,
    required TResult Function(int score, List<GamePlatform> platforms) pause,
    required TResult Function(int score, List<GamePlatform> platforms) gameOver,
  }) {
    return initial(score, platforms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int score, List<GamePlatform> platforms)? initial,
    TResult? Function(int score, List<GamePlatform> platforms)? play,
    TResult? Function(int score, List<GamePlatform> platforms)? pause,
    TResult? Function(int score, List<GamePlatform> platforms)? gameOver,
  }) {
    return initial?.call(score, platforms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, List<GamePlatform> platforms)? initial,
    TResult Function(int score, List<GamePlatform> platforms)? play,
    TResult Function(int score, List<GamePlatform> platforms)? pause,
    TResult Function(int score, List<GamePlatform> platforms)? gameOver,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(score, platforms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameState {
  const factory _Initial(
      {final int score,
      required final List<GamePlatform> platforms}) = _$InitialImpl;

  @override
  int get score;
  @override
  List<GamePlatform> get platforms;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayImplCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$$PlayImplCopyWith(
          _$PlayImpl value, $Res Function(_$PlayImpl) then) =
      __$$PlayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int score, List<GamePlatform> platforms});
}

/// @nodoc
class __$$PlayImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$PlayImpl>
    implements _$$PlayImplCopyWith<$Res> {
  __$$PlayImplCopyWithImpl(_$PlayImpl _value, $Res Function(_$PlayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? platforms = null,
  }) {
    return _then(_$PlayImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      platforms: null == platforms
          ? _value._platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<GamePlatform>,
    ));
  }
}

/// @nodoc

class _$PlayImpl implements _Play {
  const _$PlayImpl(
      {this.score = 0, required final List<GamePlatform> platforms})
      : _platforms = platforms;

  @override
  @JsonKey()
  final int score;
  final List<GamePlatform> _platforms;
  @override
  List<GamePlatform> get platforms {
    if (_platforms is EqualUnmodifiableListView) return _platforms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_platforms);
  }

  @override
  String toString() {
    return 'GameState.play(score: $score, platforms: $platforms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayImpl &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality()
                .equals(other._platforms, _platforms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, score, const DeepCollectionEquality().hash(_platforms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayImplCopyWith<_$PlayImpl> get copyWith =>
      __$$PlayImplCopyWithImpl<_$PlayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, List<GamePlatform> platforms) initial,
    required TResult Function(int score, List<GamePlatform> platforms) play,
    required TResult Function(int score, List<GamePlatform> platforms) pause,
    required TResult Function(int score, List<GamePlatform> platforms) gameOver,
  }) {
    return play(score, platforms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int score, List<GamePlatform> platforms)? initial,
    TResult? Function(int score, List<GamePlatform> platforms)? play,
    TResult? Function(int score, List<GamePlatform> platforms)? pause,
    TResult? Function(int score, List<GamePlatform> platforms)? gameOver,
  }) {
    return play?.call(score, platforms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, List<GamePlatform> platforms)? initial,
    TResult Function(int score, List<GamePlatform> platforms)? play,
    TResult Function(int score, List<GamePlatform> platforms)? pause,
    TResult Function(int score, List<GamePlatform> platforms)? gameOver,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(score, platforms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _Play implements GameState {
  const factory _Play(
      {final int score,
      required final List<GamePlatform> platforms}) = _$PlayImpl;

  @override
  int get score;
  @override
  List<GamePlatform> get platforms;
  @override
  @JsonKey(ignore: true)
  _$$PlayImplCopyWith<_$PlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseImplCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$$PauseImplCopyWith(
          _$PauseImpl value, $Res Function(_$PauseImpl) then) =
      __$$PauseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int score, List<GamePlatform> platforms});
}

/// @nodoc
class __$$PauseImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$PauseImpl>
    implements _$$PauseImplCopyWith<$Res> {
  __$$PauseImplCopyWithImpl(
      _$PauseImpl _value, $Res Function(_$PauseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? platforms = null,
  }) {
    return _then(_$PauseImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      platforms: null == platforms
          ? _value._platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<GamePlatform>,
    ));
  }
}

/// @nodoc

class _$PauseImpl implements _Pause {
  const _$PauseImpl(
      {this.score = 0, required final List<GamePlatform> platforms})
      : _platforms = platforms;

  @override
  @JsonKey()
  final int score;
  final List<GamePlatform> _platforms;
  @override
  List<GamePlatform> get platforms {
    if (_platforms is EqualUnmodifiableListView) return _platforms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_platforms);
  }

  @override
  String toString() {
    return 'GameState.pause(score: $score, platforms: $platforms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseImpl &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality()
                .equals(other._platforms, _platforms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, score, const DeepCollectionEquality().hash(_platforms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PauseImplCopyWith<_$PauseImpl> get copyWith =>
      __$$PauseImplCopyWithImpl<_$PauseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, List<GamePlatform> platforms) initial,
    required TResult Function(int score, List<GamePlatform> platforms) play,
    required TResult Function(int score, List<GamePlatform> platforms) pause,
    required TResult Function(int score, List<GamePlatform> platforms) gameOver,
  }) {
    return pause(score, platforms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int score, List<GamePlatform> platforms)? initial,
    TResult? Function(int score, List<GamePlatform> platforms)? play,
    TResult? Function(int score, List<GamePlatform> platforms)? pause,
    TResult? Function(int score, List<GamePlatform> platforms)? gameOver,
  }) {
    return pause?.call(score, platforms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, List<GamePlatform> platforms)? initial,
    TResult Function(int score, List<GamePlatform> platforms)? play,
    TResult Function(int score, List<GamePlatform> platforms)? pause,
    TResult Function(int score, List<GamePlatform> platforms)? gameOver,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(score, platforms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause implements GameState {
  const factory _Pause(
      {final int score,
      required final List<GamePlatform> platforms}) = _$PauseImpl;

  @override
  int get score;
  @override
  List<GamePlatform> get platforms;
  @override
  @JsonKey(ignore: true)
  _$$PauseImplCopyWith<_$PauseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameOverImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameOverImplCopyWith(
          _$GameOverImpl value, $Res Function(_$GameOverImpl) then) =
      __$$GameOverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int score, List<GamePlatform> platforms});
}

/// @nodoc
class __$$GameOverImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameOverImpl>
    implements _$$GameOverImplCopyWith<$Res> {
  __$$GameOverImplCopyWithImpl(
      _$GameOverImpl _value, $Res Function(_$GameOverImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? platforms = null,
  }) {
    return _then(_$GameOverImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      platforms: null == platforms
          ? _value._platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as List<GamePlatform>,
    ));
  }
}

/// @nodoc

class _$GameOverImpl implements _GameOver {
  const _$GameOverImpl(
      {this.score = 0, required final List<GamePlatform> platforms})
      : _platforms = platforms;

  @override
  @JsonKey()
  final int score;
  final List<GamePlatform> _platforms;
  @override
  List<GamePlatform> get platforms {
    if (_platforms is EqualUnmodifiableListView) return _platforms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_platforms);
  }

  @override
  String toString() {
    return 'GameState.gameOver(score: $score, platforms: $platforms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameOverImpl &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality()
                .equals(other._platforms, _platforms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, score, const DeepCollectionEquality().hash(_platforms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameOverImplCopyWith<_$GameOverImpl> get copyWith =>
      __$$GameOverImplCopyWithImpl<_$GameOverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int score, List<GamePlatform> platforms) initial,
    required TResult Function(int score, List<GamePlatform> platforms) play,
    required TResult Function(int score, List<GamePlatform> platforms) pause,
    required TResult Function(int score, List<GamePlatform> platforms) gameOver,
  }) {
    return gameOver(score, platforms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int score, List<GamePlatform> platforms)? initial,
    TResult? Function(int score, List<GamePlatform> platforms)? play,
    TResult? Function(int score, List<GamePlatform> platforms)? pause,
    TResult? Function(int score, List<GamePlatform> platforms)? gameOver,
  }) {
    return gameOver?.call(score, platforms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int score, List<GamePlatform> platforms)? initial,
    TResult Function(int score, List<GamePlatform> platforms)? play,
    TResult Function(int score, List<GamePlatform> platforms)? pause,
    TResult Function(int score, List<GamePlatform> platforms)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(score, platforms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return gameOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class _GameOver implements GameState {
  const factory _GameOver(
      {final int score,
      required final List<GamePlatform> platforms}) = _$GameOverImpl;

  @override
  int get score;
  @override
  List<GamePlatform> get platforms;
  @override
  @JsonKey(ignore: true)
  _$$GameOverImplCopyWith<_$GameOverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
