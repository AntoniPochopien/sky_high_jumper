import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_high_jumper/di_module.dart';
import 'package:sky_high_jumper/game/application/cubit/game_cubit.dart';
import 'package:sky_high_jumper/game/domain/direction.dart';
import 'package:sky_high_jumper/game/domain/game_config.dart';

@RoutePage()
class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final gameConfig = getIt<GameConfig>();
    final groundHeight = gameConfig.groundHeight;
    final platformSize = gameConfig.platformSize;
    final playerSize = gameConfig.playerSize;
    final animationDuration = gameConfig.animationDuration;
    return BlocProvider(
      create: (context) => GameCubit()..init(),
      child: BlocBuilder<GameCubit, GameState>(
        builder: (context, state) => Material(
          color: Colors.blue,
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Container(
                      width: playerSize.width,
                      height: playerSize.height,
                      color: Colors.yellow,
                    ),
                  ]),
                ),
                AnimatedSwitcher(
                    duration:  Duration(milliseconds: animationDuration),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(0, 1), // Start above the screen
                          end: Offset.zero, // End at the child's position
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
                          ))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ...state.platforms.map(
                  (e) => Padding(
                    padding:  EdgeInsets.only(top: size.height/9),
                    child: Row(
                      mainAxisAlignment: e.platformDirection == Direction.left
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      children: [e],
                    ),
                  ),
                ),
                SizedBox(height: groundHeight-platformSize.height)
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
