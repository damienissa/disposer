import 'package:disposer/disposer.dart';

import '../../data/datasources/example_data_source_interface.dart';
import '../entities/example_entitie.dart';

abstract class IExampleRepository with Disposable {

  abstract final IExampleDataSource dataSource;

  @override
  List<Disposable> get disposables => [dataSource];

  Future<ExampleEntitie> fetchEntitie();
  Stream<double> dataFeed();
}
