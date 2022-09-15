import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/auth/auth.dart';
import 'features/main/counter/counter_cubit.dart';
import 'local_storage_service.dart';
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
  getIt.registerSingleton<AuthManager>(AuthManager());
  getIt.registerSingleton<AuthBloc>(AuthBloc());
  getIt.registerSingleton<CounterCubit>(CounterCubit());
}
