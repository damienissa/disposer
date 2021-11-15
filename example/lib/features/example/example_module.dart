import 'dart:developer';

import 'data/datasources/example_data_source.dart';
import 'data/repositories/example_data_repository.dart';
import 'domain/repositories/example_domain_repository.dart';
import 'domain/usecases/example_usecase.dart';
import 'presentation/pages/example_page.dart';
import 'presentation/view_models/example_view_model.dart';

class ExampleModule {
  static ExamplePage build() {
    final dataSource = ExampleDataSource();
    _created(dataSource.runtimeType);
    final dataRepository = ExampleDataRepository(dataSource);
    _created(dataRepository.runtimeType);
    final domainRepository = ExampleDomainRepository(dataRepository);
    _created(domainRepository.runtimeType);
    final usecase = ExampleUsecase(domainRepository);
    _created(usecase.runtimeType);
    final viewModel =
        ExampleViewModel(usecase); // Can be replaced to a bloc/cubit
    _created(viewModel.runtimeType);
    return ExamplePage(viewModel: viewModel);
  }

  static void _created(Type type) => log('$type created');
}
