/// ViewModel template
const presentationViewModelTemplateFile = r'''
import 'package:disposer/disposer.dart';

import '../../domain/entities/template_entitie.dart';
import '../../domain/usecases/template_usecase_interface.dart';
import '../routing/template_router_interface.dart';
import 'template_view_state.dart';
import 'template_view_model_interface.dart';

class TemplateViewModel extends ITemplateViewModel {
  TemplateViewModel({required this.usecase, required this.router}) {
    usecase.dataFeed().listen((event) {
      state =
          TemplateViewState(entitie: TemplateEntitie(event.toStringAsFixed(2)));
      notifyListeners();
    }).canceledBy(this);
  }

  final ITemplateRouter router;

  @override
  final ITemplateUsecase usecase;
  @override
  TemplateViewState state = TemplateViewState();

  @override
  void fetch() async {
    state = TemplateViewState(entitie: await usecase.fetchEntitie());
    notifyListeners();
  }
}
''';
