import 'package:disposer/disposer.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/example_entitie.dart';
import '../../domain/usecases/example_usecase.dart';
import 'example_view_state.dart';

class ExampleViewModel with ChangeNotifier, Disposable, StreamListenable {
  ExampleViewModel(this.usecase) {
    usecase.dataFeed().listen((event) {
      state =
          ExampleViewState(entitie: ExampleEntitie(event.toStringAsFixed(2)));
      notifyListeners();
    }).canceledBy(this);
  }

  @override
  List<Disposable> get disposables => [usecase];

  final ExampleUsecase usecase;
  ExampleViewState state = ExampleViewState();

  void fetch() async {
    state = ExampleViewState(entitie: await usecase.fetchEntitie());
    notifyListeners();
  }

  @override
  void dispose() {
    unsubscribe();
    super.dispose();
  }
}
