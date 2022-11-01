import 'dart:async';

import 'main.interface.dart';

class MainManager implements IMainManager {
  @override
  StreamController<int> bottomController = StreamController<int>.broadcast();
}
