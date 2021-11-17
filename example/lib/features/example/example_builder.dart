import 'data/datasources/example_data_source.dart';
import 'data/repositories/example_repository.dart';
import 'domain/usecases/example_usecase.dart';
import 'presentation/pages/example_page.dart';
import 'presentation/view_models/example_view_model.dart';

class ExampleBuilder {
  static ExamplePage build() {
    final dataSource = ExampleDataSource();
    final repository = ExampleRepository(dataSource);
    final usecase = ExampleUsecase(repository);
    final viewModel = ExampleViewModel(usecase);
    return ExamplePage(viewModel: viewModel);
  }
}
