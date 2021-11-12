import 'package:disposer/disposer.dart';
import '../../data/repositories/example_data_repository.dart';
import '../entities/example_entitie.dart';

class ExampleDomainRepository with Disposable {
  ExampleDomainRepository(this.dataRepository);

  final ExampleDataRepository dataRepository;

  @override
  get disposables => [dataRepository];

  Future<ExampleEntitie> fetchEntitie() async {
    return ExampleEntitie.fromDataModel(await dataRepository.fetchData());
  }

  Stream<double> dataFeed() =>
      dataRepository.dataFeed().map((event) => double.tryParse(event) ?? 0);
}
