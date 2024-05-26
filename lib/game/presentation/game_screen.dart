import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_high_jumper/game/application/cubit/game_cubit.dart';
import 'package:sky_high_jumper/game/domain/direction.dart';

@RoutePage()
class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  bool afterFirstTap = false;

  Widget _tapHitBox(Direction tapDirection) => Expanded(
      child: GestureDetector(
          onTap: () {
            if (afterFirstTap) {
              print(tapDirection);
            } else {
              setState(() {
                afterFirstTap = true;
              });
            }
          },
          child: Container(
            color: Colors.transparent,
          )));

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context);
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ...state.platforms.map(
                          (e) => Row(
                            mainAxisAlignment:
                                e.platformDirection == Direction.left
                                    ? MainAxisAlignment.start
                                    : MainAxisAlignment.end,
                            children: [e],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      color: Colors.yellow,
                    ),
                  ]),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  width: double.infinity,
                  height: afterFirstTap ? 0 : 100,
                  color: Colors.green,
                )
              ],
            ),
            Positioned.fill(
              child: Row(
                children: [
                  _tapHitBox(Direction.left),
                  _tapHitBox(Direction.right)
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
