const datasourceTemplateInterfaceFile = r'''
import 'package:disposer/disposer.dart';
import '../models/template_data_model.dart';

abstract class ITemplateDataSource with Disposable {
  Future<TemplateDataModel> fetchData();
  Stream<int> dataFeed();
}
''';
