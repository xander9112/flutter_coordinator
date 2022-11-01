import 'src/src.dart';

Future<void> main() async {
  await AppInit.initCommon();

  await AppInit.initLogs();

  await AppInit.initFirebase();

  AppInit.initStorage(
    () async {
      await AppInit.initDependencies();

      await AppInit.initLocalizations();

      AppFlow();
    },
  );
}
