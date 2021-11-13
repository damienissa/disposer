import 'dart:io';

import 'string_ext.dart';
import 'constants.dart';

import 'src/data/datasources/template_data_source.dart';
import 'src/data/models/template_data_model.dart';
import 'src/data/repositories/template_data_repository.dart';
import 'src/domain/entities/template_entitie.dart';
import 'src/domain/repositories/template_domain_repository.dart';
import 'src/domain/usecases/template_usecase.dart';
import 'src/presentation/pages/template_page.dart';
import 'src/presentation/view_models/template_view_model.dart';
import 'src/presentation/widgets/template_widget.dart';
import 'src/template_module.dart';

/// Future builder main component
abstract class FeatureBuilder {
  /// Build method with *[moduleName]* parameter
  static void build({required String moduleName, String? rootPath}) {
    final dataMap = {
      datasourceTemplate: datasourceTemplateFile,
      dataModelTemplate: dataModelTemplateFile,
      dataRepositoryTemplate: dataRepositoryTemplateFile,
      domainEntitieTemplate: domainEntitieTemplateFile,
      domainUsecaseTemplate: domainUsecaseTemplateFile,
      domainRepositoryTemplate: domainRepositoryTemplateFile,
      presentationPageTemplate: presentationPageTemplateFile,
      presentationViewModelTemplate: presentationViewModelTemplateFile,
      presentationWidgetTemplate: presentationWidgetTemplateFile,
      moduleTemplate: moduleTemplateFile,
    }.map((key, value) => MapEntry(key.pathWith(moduleName, rootPath: rootPath),
        value.dataWith(moduleName)));
    dataMap.forEach((key, value) => File(key)
      ..createSync(recursive: true)
      ..writeAsStringSync(value));
  }
}
