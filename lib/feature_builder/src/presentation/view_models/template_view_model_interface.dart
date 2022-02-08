const presentationViewModelTemplateInterfaceFile = r'''
import 'package:disposer/disposer.dart';
import 'package:flutter/material.dart';

import '../../domain/usecases/template_usecase_interface.dart';
import 'template_view_state.dart';

abstract class ITemplateViewModel
    with ChangeNotifier, Disposable, StreamListenable {
  
  abstract final ITemplateUsecase usecase;
  TemplateViewState get state;
  @override
  List<Disposable> get disposables => [usecase];

  void fetch();
  @override
  void dispose() {
    unsubscribe();
    super.dispose();
  }
}
''';
