import 'package:flutter/material.dart';

import 'features/example/data/datasources/example_data_source.dart';
import 'features/example/data/repositories/example_data_repository.dart';
import 'features/example/domain/repositories/example_domain_repository.dart';
import 'features/example/domain/usecases/example_usecase.dart';
import 'features/example/presentation/pages/example_page.dart';
import 'features/example/presentation/view_models/example_view_model.dart';

void main() {
  runApp(ExampleModule.build());
}

class ExampleModule {
  static ExamplePage build() {
    final dataSource = ExampleDataSource();
    final dataRepository = ExampleDataRepository(dataSource);
    final domainRepository = ExampleDomainRepository(dataRepository);
    final usecase = ExampleUsecase(domainRepository);
    final viewModel =
        ExampleViewModel(usecase); // Can be replaced to a bloc/cubit

    return ExamplePage(
        viewModel: viewModel,
        willDispose: () {
          viewModel.dispose();
        });
  }
}
