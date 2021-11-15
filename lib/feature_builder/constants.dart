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

const datasourceTemplate = 'src/data/datasources/template_data_source.dart';
const dataModelTemplate = 'src/data/models/template_data_model.dart';
const dataRepositoryTemplate =
    'src/data/repositories/template_data_repository.dart';
const domainEntitieTemplate = 'src/domain/entities/template_entitie.dart';
const domainUsecaseTemplate = 'src/domain/usecases/template_usecase.dart';
const domainRepositoryTemplate =
    'src/domain/repositories/template_domain_repository.dart';
const presentationPageTemplate = 'src/presentation/pages/template_page.dart';
const presentationViewModelTemplate =
    'src/presentation/view_models/template_view_model.dart';
const presentationWidgetTemplate =
    'src/presentation/widgets/template_widget.dart';
const moduleTemplate = 'src/template_module.dart';
const dataMap = {
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
};
