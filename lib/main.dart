import 'src/src.dart';

Future<void> main() async {
  await AppInit.initCommon();

  await AppInit.initFirebase();

  AppInit.initStorage(
    () async {
      await AppInit.initDependencies();

      AppCoordinator().start();
    },
  );
}
