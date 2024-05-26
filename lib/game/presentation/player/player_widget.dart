import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_high_jumper/di_module.dart';
import 'package:sky_high_jumper/game/application/cubit/game_cubit.dart';
import 'package:sky_high_jumper/game/domain/game_config.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({super.key});

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: getIt<GameConfig>().animationDuration,
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.addListener(() {
      setState(() {});
    });
  }

  void _startJump() {
    if (_controller.status == AnimationStatus.completed) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final gameConfig = getIt<GameConfig>();
    final groundHeight = gameConfig.groundHeight;
    final playerSize = gameConfig.playerSize;

    final size = MediaQuery.sizeOf(context);
    final screenWidth = size.width;
    final screenHeight = size.height;
    const double startX = 75;
    final double endX = screenWidth - 100;
    final double peakY = screenHeight / 1.3;
    final double endY =  screenHeight - groundHeight - playerSize.width;

    final double posX = startX + (endX - startX) * _animation.value;
    final double posY =
        endY - (4 * (endY - peakY) * _animation.value * (1 - _animation.value));

    return BlocListener<GameCubit, GameState>(
      listenWhen: (previousState, currentState) =>
          previousState.score != currentState.score,
      listener: (context, state) {
        _startJump();
      },
      child: Positioned(
        left: posX,
        top: posY,
        child: Container(
          width: playerSize.width,
          height: playerSize.height,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
