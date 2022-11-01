import 'package:get_it/get_it.dart';

import '../src.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt.registerSingleton<SecureStorageService>(SecureStorageService());
  getIt.registerSingleton<NeoRouter>(NeoRouter());
  getIt.registerSingleton<AuthRouter>(AuthRouter());
  getIt.registerSingleton<AppRouter>(AppRouter());

  await AuthInjectable.init(getIt);
}
