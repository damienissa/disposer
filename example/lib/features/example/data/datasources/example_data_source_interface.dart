import 'package:disposer/disposer.dart';
import '../models/example_data_model.dart';

abstract class IExampleDataSource with Disposable {
  Future<ExampleDataModel> fetchData();
  Stream<int> dataFeed();
}
