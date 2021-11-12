import 'data/datasources/example_data_source.dart';
import 'data/repositories/example_data_repository.dart';
import 'domain/repositories/example_domain_repository.dart';
import 'domain/usecases/example_usecase.dart';
import 'presentation/pages/example_page.dart';
import 'presentation/view_models/example_view_model.dart';

class ExampleModule {
  static ExamplePage build() {
    final dataSource = ExampleDataSource();
    final dataRepository = ExampleDataRepository(dataSource);
    final domainRepository = ExampleDomainRepository(dataRepository);
    final usecase = ExampleUsecase(domainRepository);
    final viewModel =
        ExampleViewModel(usecase); // Can be replaced to a block/cubit

    return ExamplePage(
        viewModel: viewModel,
        willDispose: () {
          viewModel.dispose();
        });
  }
}
