import 'package:flutter/material.dart';
import 'package:sky_high_jumper/game/domain/direction.dart';

class GamePlatform extends StatelessWidget {
  final Direction platformDirection;
  final double height;
  final double width;
  final Color color;

  const GamePlatform(
      {super.key,
      required this.platformDirection,
      this.height = 35,
      this.width = 200,
      this.color = Colors.brown
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
