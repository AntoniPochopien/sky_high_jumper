import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sky_high_jumper/game/domain/game_config.dart';
import 'package:sky_high_jumper/navigation/app_router.dart';

final getIt = GetIt.instance;

void diInit() {
  getIt.registerLazySingleton(() => AppRouter());
  getIt.registerLazySingleton(() => const GameConfig(
      groundHeight: 100,
      platformSize: Size(200, 35),
      playerSize: Size(32, 32),
      animationDuration: Duration(milliseconds: 400)
      ));
}
