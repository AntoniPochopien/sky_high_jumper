import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_high_jumper/di_module.dart';
import 'package:sky_high_jumper/game/application/cubit/game_cubit.dart';
import 'package:sky_high_jumper/game/domain/direction.dart';
import 'package:sky_high_jumper/game/domain/game_config.dart';
import 'package:sky_high_jumper/game/presentation/player/player_widget.dart';

@RoutePage()
class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => GameScreenState();
}

class GameScreenState extends State<GameScreen>
    with SingleTickerProviderStateMixin {
  bool afterFirstTap = false;

  Widget _tapHitBox(BuildContext ctx, {required Direction tapDirection}) =>
      Expanded(
          child: GestureDetector(
              onTap: () {
                if (!afterFirstTap) {
                  setState(() {
                    afterFirstTap = true;
                  });
                }
                ctx.read<GameCubit>().tap(tapDirection);
              },
              child: Container(
                color: Colors.transparent,
              )));

  void _playerAnimationCallback(AnimationController controller) {
    if (controller.status == AnimationStatus.completed) {
      controller.reverse();
    } else {
      controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final gameConfig = getIt<GameConfig>();
    final groundHeight = gameConfig.groundHeight;
    final platformSize = gameConfig.platformSize;
    final animationDuration = gameConfig.animationDuration;
    return BlocProvider(
      create: (context) => GameCubit()..init(),
      child: BlocBuilder<GameCubit, GameState>(
        builder: (context, state) => Material(
          color: Colors.blue,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            AnimatedSwitcher(
                duration: animationDuration,
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 1),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
                child: afterFirstTap
                    ? Container(
                        key: const ValueKey(0),
                        height: groundHeight,
                      )
                    : Container(
                        key: const ValueKey(1),
                        height: groundHeight,
                        width: double.infinity,
                        color: Colors.green,
                      )),
            const PlayerWidget(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ...state.platforms.map(
                  (e) => Padding(
                    padding: EdgeInsets.only(top: size.height / 9),
                    child: Row(
                      mainAxisAlignment: e.platformDirection == Direction.left
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      children: [e],
                    ),
                  ),
                ),
                SizedBox(height: groundHeight - platformSize.height)
              ],
            ),
            Positioned.fill(
              child: Row(
                children: [
                  _tapHitBox(context, tapDirection: Direction.left),
                  _tapHitBox(context, tapDirection: Direction.right)
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
