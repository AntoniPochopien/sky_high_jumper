import 'package:get_it/get_it.dart';
import 'package:sky_high_jumper/navigation/app_router.dart';

final getIt = GetIt.instance;

void diInit(){
    getIt.registerLazySingleton(() => AppRouter());
}