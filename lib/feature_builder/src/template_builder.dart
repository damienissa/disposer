/// Builder template
const builderTemplateFile = r'''
import 'package:flutter/material.dart';

import 'data/datasources/template_data_source.dart';
import 'data/repositories/template_repository.dart';
import 'domain/usecases/template_usecase.dart';
import 'presentation/pages/template_page.dart';
import 'presentation/routing/template_router.dart';
import 'presentation/view_models/template_view_model.dart';

class TemplateBuilder {
  static TemplatePage build(NavigatorState navigatorState) {
    final dataSource = TemplateDataSource();
    final repository = TemplateRepository(dataSource);
    final usecase = TemplateUsecase(repository);
    final router = TemplateRouter(navigatorState);
    final viewModel = TemplateViewModel(usecase: usecase, router: router);
    return TemplatePage(viewModel: viewModel);
  }
}
''';
