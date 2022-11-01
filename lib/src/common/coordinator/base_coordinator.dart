import 'package:flutter_flow/src/src.dart';

abstract class IFacade {
  AppManager get appManager;
  AuthManager get authManager;
}

class _IFacadeImpl implements IFacade {
  _IFacadeImpl._internal();
  factory _IFacadeImpl() => _singleton;
  static final _IFacadeImpl _singleton = _IFacadeImpl._internal();

  @override
  final AppManager appManager = AppManager();

  @override
  final AuthManager authManager = AuthManager();
}

class BaseCoordinator implements ICoordinator {
  final IFacade facade = _IFacadeImpl();

  @override
  void finish() {}

  @override
  void start() {}
}
