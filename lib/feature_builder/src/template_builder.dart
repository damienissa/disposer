/// Builder template
const builderTemplateFile = r'''
import 'data/datasources/template_data_source.dart';
import 'data/repositories/template_repository.dart';
import 'domain/usecases/template_usecase.dart';
import 'presentation/pages/template_page.dart';
import 'presentation/view_models/template_view_model.dart';

class TemplateBuilder {
  static TemplatePage build() {
    final dataSource = TemplateDataSource();
    final repository = TemplateRepository(dataSource);
    final usecase = TemplateUsecase(repository);
    final viewModel = TemplateViewModel(usecase);
    return TemplatePage(viewModel: viewModel);
  }
}
''';
