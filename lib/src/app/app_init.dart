import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../src.dart';

class AppInit {
  static Future<void> initCommon(
      [List<DeviceOrientation>? orientations]) async {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setPreferredOrientations(
      orientations ??
          <DeviceOrientation>[
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ],
    );
  }

  static Future<void> initFirebase() async {}

  static Future<void> initDependencies() async {
    return configureDependencies();
  }

  static Future<void> initLocalizations(
    Widget app,
    void Function(Widget app) onInit,
  ) async {
    onInit(app);
  }

  static Future<void> initEnvironments({required Environment env}) async {
    return;
  }

  static Future<void> initStorage(VoidCallback onInit) async {
    HydratedStorage storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory(),
    );

    return HydratedBlocOverrides.runZoned(
      onInit,
      storage: storage,
      blocObserver: AppBlocObserver.instance(),
      eventTransformer: bloc_concurrency.sequential<Object?>(),
    );
  }
}
