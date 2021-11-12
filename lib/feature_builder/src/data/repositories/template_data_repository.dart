final dataRepositoryTemplateFile = r'''
import 'package:disposer/disposer.dart';
import '../models/template_data_model.dart';
import '../datasources/template_data_source.dart';

class TemplateDataRepository with Disposable {
  TemplateDataRepository(this.dataSource);

  final TemplateDataSource dataSource;

  @override
  get disposables => [dataSource];

  Future<TemplateDataModel> fetchData() async {
    return TemplateDataModel.from(await dataSource.fetchData());
  }

  Stream<String> dataFeed() =>
      dataSource.dataFeed().map((event) => event.toString());
}
''';
