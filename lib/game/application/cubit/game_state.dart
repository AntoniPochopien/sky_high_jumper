part of 'game_cubit.dart';

@freezed
class GameState with _$GameState {
  const factory GameState.initial({
     @Default(0) int score,
    required List<GamePlatform> platforms,
  }) = _Initial;
  const factory GameState.play({
     @Default(0) int score,
    required List<GamePlatform> platforms,
  }) = _Play;
  const factory GameState.pause({
    @Default(0) int score,
    required List<GamePlatform> platforms,
  }) = _Pause;
  const factory GameState.gameOver({
    @Default(0) int score,
    required List<GamePlatform> platforms,
  }) = _GameOver;
}
