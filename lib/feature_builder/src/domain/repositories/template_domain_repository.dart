const domainRepositoryTemplateFile = r'''
import 'package:disposer/disposer.dart';
import '../../data/repositories/template_data_repository.dart';
import '../entities/template_entitie.dart';

class TemplateDomainRepository with Disposable {
  TemplateDomainRepository(this.dataRepository);

  final TemplateDataRepository dataRepository;

  @override
  get disposables => [dataRepository];

  Future<TemplateEntitie> fetchEntitie() async {
    return TemplateEntitie.fromDataModel(await dataRepository.fetchData());
  }

  Stream<double> dataFeed() =>
      dataRepository.dataFeed().map((event) => double.tryParse(event) ?? 0);
}
''';
