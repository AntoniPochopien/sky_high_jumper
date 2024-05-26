import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_high_jumper/game/domain/direction.dart';
import 'package:sky_high_jumper/game/presentation/game_platforms/game_platform.dart';
import 'dart:math' as math;

part 'game_state.dart';
part 'game_cubit.freezed.dart';

class GameCubit extends Cubit<GameState> {
  GameCubit() : super(const GameState.initial(platforms: []));
  final _rnd = math.Random();

  void init() {
    final platforms = _generatePlatforms(6);
    emit(state.copyWith(platforms: platforms));
  }

  List<GamePlatform> _generatePlatforms(int length) {
    final p = <GamePlatform>[];
    for (int i = 0; i < length; i++) {
      final randomValue = _rnd.nextInt(2);
      p.add(GamePlatform(platformDirection: Direction.values[randomValue]));
    }
    return p;
  }
}
