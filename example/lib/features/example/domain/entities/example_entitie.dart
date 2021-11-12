import '../../data/models/example_data_model.dart';

class ExampleEntitie {
  final String value;
  ExampleEntitie(this.value);
  factory ExampleEntitie.fromDataModel(ExampleDataModel dataModel) =>
      ExampleEntitie('');
}
