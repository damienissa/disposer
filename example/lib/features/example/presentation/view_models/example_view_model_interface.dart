import 'package:disposer/disposer.dart';
import 'package:flutter/material.dart';

import '../../domain/usecases/example_usecase_interface.dart';
import 'example_view_state.dart';

abstract class IExampleViewModel
    with ChangeNotifier, Disposable, StreamListenable {
  
  abstract final IExampleUsecase usecase;
  ExampleViewState get state;
  @override
  List<Disposable> get disposables => [usecase];

  void fetch();
  @override
  void dispose() {
    unsubscribe();
    super.dispose();
  }
}
