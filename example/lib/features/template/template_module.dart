import 'data/datasources/template_data_source.dart';
import 'data/repositories/template_data_repository.dart';
import 'domain/repositories/template_domain_repository.dart';
import 'domain/usecases/template_usecase.dart';
import 'presentation/pages/template_page.dart';
import 'presentation/view_models/template_view_model.dart';

class TemplateModule {
  static TemplatePage build() {
    final dataSource = TemplateDataSource();
    final dataRepository = TemplateDataRepository(dataSource);
    final domainRepository = TemplateDomainRepository(dataRepository);
    final usecase = TemplateUsecase(domainRepository);
    final viewModel =
        TemplateViewModel(usecase); // Can be replaced to a block/cubit

    return TemplatePage(
        viewModel: viewModel,
        willDispose: () {
          viewModel.dispose();
        });
  }
}
