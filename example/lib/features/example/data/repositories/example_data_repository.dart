import 'package:disposer/disposer.dart';
import '../models/example_data_model.dart';
import '../datasources/example_data_source.dart';

class ExampleDataRepository with Disposable {
  ExampleDataRepository(this.dataSource);

  final ExampleDataSource dataSource;

  @override
  get disposables => [dataSource];

  Future<ExampleDataModel> fetchData() async {
    return ExampleDataModel.from(await dataSource.fetchData());
  }

  Stream<String> dataFeed() =>
      dataSource.dataFeed().map((event) => event.toString());
}
