import 'package:flutter/material.dart';
import 'package:sky_high_jumper/di_module.dart';
import 'package:sky_high_jumper/l10n/l10n.dart';
import 'package:sky_high_jumper/navigation/app_router.dart';

void main() {
  diInit();
  runApp(const SkyHighJumper());
}

class SkyHighJumper extends StatelessWidget {
  const SkyHighJumper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
                routerConfig: getIt<AppRouter>().config(),
                title: 'Sky High Jumper',
                theme: ThemeData(
                  useMaterial3: true,
                  pageTransitionsTheme: const PageTransitionsTheme(
                    builders: <TargetPlatform, PageTransitionsBuilder>{
                      TargetPlatform.android: ZoomPageTransitionsBuilder(
                          allowEnterRouteSnapshotting: false),
                      TargetPlatform.iOS: ZoomPageTransitionsBuilder(
                          allowEnterRouteSnapshotting: false)
                    },
                  ),
                ),
                locale: null, //TODO
                supportedLocales: L10n.supported,
                localizationsDelegates: L10n.localizationDelegates,
              );
  }
}
