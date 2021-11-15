const domainEntitieTemplateFile = r'''
import '../../data/models/template_data_model.dart';

class TemplateEntitie {
  final String value;
  TemplateEntitie(this.value);
  factory TemplateEntitie.fromDataModel(TemplateDataModel dataModel) =>
      TemplateEntitie('');
}
''';
