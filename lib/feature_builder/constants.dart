import 'package:disposer/feature_builder/src/presentation/view_models/template_view_model_interface.dart';

import 'src/data/datasources/template_data_source.dart';
import 'src/data/datasources/template_data_source_interface.dart';
import 'src/data/models/template_data_model.dart';
import 'src/data/repositories/template_repository.dart';
import 'src/domain/entities/template_entitie.dart';
import 'src/domain/repositories/template_repository.dart';
import 'src/domain/usecases/template_usecase.dart';
import 'src/domain/usecases/template_usecase_interface.dart';
import 'src/presentation/pages/template_page.dart';
import 'src/presentation/routing/template_router.dart';
import 'src/presentation/routing/template_router_interface.dart';
import 'src/presentation/view_models/template_view_model.dart';
import 'src/presentation/view_models/template_view_state.dart';
import 'src/presentation/widgets/template_widget.dart';
import 'src/template_builder.dart';

/// Data
const datasourceTemplateInterface =
    'src/data/datasources/template_data_source_interface.dart';
const datasourceTemplate = 'src/data/datasources/template_data_source.dart';
const dataModelTemplate = 'src/data/models/template_data_model.dart';
const dataRepositoryTemplate = 'src/data/repositories/template_repository.dart';

/// Domain
const domainEntitieTemplate = 'src/domain/entities/template_entitie.dart';
const domainUsecaseTemplate = 'src/domain/usecases/template_usecase.dart';
const domainUsecaseTemplateInterface =
    'src/domain/usecases/template_usecase_interface.dart';
const domainRepositoryTemplate =
    'src/domain/repositories/template_repository.dart';

/// Presentation
const presentationPageTemplate = 'src/presentation/pages/template_page.dart';

const presentationRoutingInterfaceTemplate =
    'src/presentation/routing/template_router_interface.dart';
const presentationRoutingTemplate =
    'src/presentation/routing/template_router.dart';

const presentationViewModelTemplateInterface =
    'src/presentation/view_models/template_view_model_interface.dart';
const presentationViewModelTemplate =
    'src/presentation/view_models/template_view_model.dart';
const presentationViewStateTemplate =
    'src/presentation/view_models/template_view_state.dart';

const presentationWidgetTemplate =
    'src/presentation/widgets/template_widget.dart';

const moduleTemplate = 'src/template_builder.dart';

const dataMap = {
  datasourceTemplateInterface: datasourceTemplateInterfaceFile,
  datasourceTemplate: datasourceTemplateFile,
  dataModelTemplate: dataModelTemplateFile,
  dataRepositoryTemplate: dataRepositoryTemplateFile,
  domainEntitieTemplate: domainEntitieTemplateFile,
  domainUsecaseTemplateInterface: domainUsecaseTemplateInterfaceFile,
  domainUsecaseTemplate: domainUsecaseTemplateFile,
  domainRepositoryTemplate: domainRepositoryTemplateFile,
  presentationPageTemplate: presentationPageTemplateFile,
  presentationViewModelTemplateInterface:
      presentationViewModelTemplateInterfaceFile,
  presentationViewModelTemplate: presentationViewModelTemplateFile,
  presentationViewStateTemplate: presentationViewStateTemplateFile,
  presentationRoutingInterfaceTemplate:
      presentationRoutingInterfaceTemplateFile,
  presentationRoutingTemplate: presentationRoutingTemplateFile,
  presentationWidgetTemplate: presentationWidgetTemplateFile,
  moduleTemplate: builderTemplateFile,
};
