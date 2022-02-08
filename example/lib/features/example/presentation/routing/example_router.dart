import 'package:flutter/material.dart';
import 'example_router_interface.dart';

class ExampleRouter implements IExampleRouter {
  final NavigatorState _navigatorState;

  ExampleRouter(this._navigatorState);

  @override
  void goToNextPage({List? args}) {
    _navigatorState.pushNamed('NextPage', arguments: args);
  }

  @override
  void moveBack({List? args}) {
    _navigatorState.pop(args);
  }
}

