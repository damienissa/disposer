/// Router template
const presentationRoutingTemplateFile = r'''
import 'package:flutter/material.dart';
import 'template_router_interface.dart';

class TemplateRouter implements ITemplateRouter {
  final NavigatorState _navigatorState;

  TemplateRouter(this._navigatorState);

  @override
  void goToNextPage({List? args}) {
    _navigatorState.pushNamed('NextPage', arguments: args);
  }

  @override
  void moveBack({List? args}) {
    _navigatorState.pop(args);
  }
}

''';
