/// Repository interface template
const domainRepositoryTemplateFile = r'''
import 'package:disposer/disposer.dart';

import '../../data/datasources/template_data_source_interface.dart';
import '../entities/template_entitie.dart';

abstract class ITemplateRepository with Disposable {

  abstract final ITemplateDataSource dataSource;

  @override
  List<Disposable> get disposables => [dataSource];

  Future<TemplateEntitie> fetchEntitie();
  Stream<double> dataFeed();
}
''';
