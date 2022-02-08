import 'package:flutter/material.dart';

import 'data/datasources/example_data_source.dart';
import 'data/repositories/example_repository.dart';
import 'domain/usecases/example_usecase.dart';
import 'presentation/pages/example_page.dart';
import 'presentation/routing/example_router.dart';
import 'presentation/view_models/example_view_model.dart';

class ExampleBuilder {
  static ExamplePage build(NavigatorState navigatorState) {
    final dataSource = ExampleDataSource();
    final repository = ExampleRepository(dataSource);
    final usecase = ExampleUsecase(repository);
    final router = ExampleRouter(navigatorState);
    final viewModel = ExampleViewModel(usecase: usecase, router: router);
    return ExamplePage(viewModel: viewModel);
  }
}
