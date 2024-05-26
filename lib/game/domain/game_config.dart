import 'package:flutter/material.dart';

class GameConfig {
  final Size platformSize;
  final double groundHeight;
  final Size playerSize;
  final int animationDuration;

  const GameConfig(
      {required this.groundHeight,
      required this.platformSize,
      required this.playerSize,
      required this.animationDuration});
}
