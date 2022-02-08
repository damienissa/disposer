/// Repository implementation template
const dataRepositoryTemplateFile = r'''
import '../../domain/entities/template_entitie.dart';
import '../../domain/repositories/template_repository.dart';
import '../datasources/template_data_source_interface.dart';

class TemplateRepository extends ITemplateRepository {
  TemplateRepository(this.dataSource);

  @override
  final ITemplateDataSource dataSource;

  @override
  Stream<double> dataFeed() =>
      dataSource.dataFeed().map((event) => event.toDouble());

  @override
  Future<TemplateEntitie> fetchEntitie() async {
    return TemplateEntitie.fromDataModel(
        await dataSource.fetchData());
  }
}
''';
