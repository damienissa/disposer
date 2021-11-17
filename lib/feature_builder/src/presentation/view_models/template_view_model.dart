/// ViewModel template
const presentationViewModelTemplateFile = r'''
import 'package:disposer/disposer.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/template_entitie.dart';
import '../../domain/usecases/template_usecase.dart';
import 'template_view_state.dart';

class TemplateViewModel with ChangeNotifier, Disposable, StreamListenable {
  TemplateViewModel(this.usecase) {
    usecase.dataFeed().listen((event) {
      state =
          TemplateViewState(entitie: TemplateEntitie(event.toStringAsFixed(2)));
      notifyListeners();
    }).canceledBy(this);
  }

  @override
  List<Disposable> get disposables => [usecase];

  final TemplateUsecase usecase;
  TemplateViewState state = TemplateViewState();

  void fetch() async {
    state = TemplateViewState(entitie: await usecase.fetchEntitie());
    notifyListeners();
  }

  @override
  void dispose() {
    unsubscribe();
    super.dispose();
  }
}
''';
