import 'package:flutter_flow/src/users_flow.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/features.dart';
import '../services/services.dart';
import 'router/app_router.dart';

final GetIt getIt = GetIt.instance;

final GetItHelper getItHelper = GetItHelper(getIt);

class _$LocalStorageService extends LocalStorageService {}

Future<void> configureDependencies() async {
  final LocalStorageService localStorageService = _$LocalStorageService();

  await getItHelper.factoryAsync<SharedPreferences>(
    () => localStorageService.prefs,
    preResolve: true,
  );

  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerSingleton<AuthStorage>(AuthStorage());

  getIt.registerSingleton<AuthController>(AuthController());
  getIt.registerSingleton<AuthRouter>(AuthRouter());
  getIt.registerSingleton<AuthFlow>(AuthFlow());
  getIt.registerSingleton<ProfileRouter>(ProfileRouter());
  getIt.registerSingleton<UsersFlow>(UsersFlow());
  getIt.registerSingleton<ProfileFlow>(ProfileFlow());
}
