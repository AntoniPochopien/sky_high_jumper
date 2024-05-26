import 'package:auto_route/auto_route.dart';
import 'package:sky_high_jumper/game/presentation/game_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: GameRoute.page, initial: true),
  ];
}