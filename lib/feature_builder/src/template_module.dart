const moduleTemplateFile = r'''
import 'dart:developer';

import 'data/datasources/template_data_source.dart';
import 'data/repositories/template_data_repository.dart';
import 'domain/repositories/template_domain_repository.dart';
import 'domain/usecases/template_usecase.dart';
import 'presentation/pages/template_page.dart';
import 'presentation/view_models/template_view_model.dart';

class TemplateModule {
  static TemplatePage build() {
    final dataSource = TemplateDataSource();
    _created(dataSource.runtimeType);
    final dataRepository = TemplateDataRepository(dataSource);
    _created(dataRepository.runtimeType);
    final domainRepository = TemplateDomainRepository(dataRepository);
    _created(domainRepository.runtimeType);
    final usecase = TemplateUsecase(domainRepository);
    _created(usecase.runtimeType);
    final viewModel =
        TemplateViewModel(usecase); // Can be replaced to a bloc/cubit
    _created(viewModel.runtimeType);
    return TemplatePage(viewModel: viewModel);
  }

  static void _created(Type type) => log('$type created');
}
''';
