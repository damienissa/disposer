import 'package:disposer/disposer.dart';

import '../../domain/entities/example_entitie.dart';
import '../../domain/usecases/example_usecase_interface.dart';
import '../routing/example_router_interface.dart';
import 'example_view_state.dart';
import 'example_view_model_interface.dart';

class ExampleViewModel extends IExampleViewModel {
  ExampleViewModel({required this.usecase, required this.router}) {
    usecase.dataFeed().listen((event) {
      state =
          ExampleViewState(entitie: ExampleEntitie(event.toStringAsFixed(2)));
      notifyListeners();
    }).canceledBy(this);
  }

  final IExampleRouter router;

  @override
  final IExampleUsecase usecase;
  @override
  ExampleViewState state = ExampleViewState();

  @override
  void fetch() async {
    state = ExampleViewState(entitie: await usecase.fetchEntitie());
    notifyListeners();
  }
}
