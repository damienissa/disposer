import 'package:disposer/disposer.dart';

import '../../data/datasources/example_data_source.dart';
import '../entities/example_entitie.dart';

abstract class IExampleRepository with Disposable {
  IExampleRepository(this.dataSource);

  final ExampleDataSource dataSource;

  @override
  List<Disposable> get disposables => [dataSource];

  Future<ExampleEntitie> fetchEntitie();
  Stream<double> dataFeed();
}
