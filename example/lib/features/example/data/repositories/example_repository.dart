import '../../domain/entities/example_entitie.dart';
import '../../domain/repositories/example_repository.dart';
import '../datasources/example_data_source.dart';

class ExampleRepository extends IExampleRepository {
  ExampleRepository(ExampleDataSource dataSource) : super(dataSource);

  @override
  Stream<double> dataFeed() =>
      dataSource.dataFeed().map((event) => event.toDouble());

  @override
  Future<ExampleEntitie> fetchEntitie() async {
    return ExampleEntitie.fromDataModel(
        await dataSource.fetchData());
  }
}
