import 'dart:async';
import 'dart:developer';

import '../models/example_data_model.dart';
import 'example_data_source_interface.dart';

class ExampleDataSource extends IExampleDataSource {
  ExampleDataSource() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      log(timer.tick.toString());
      _streamController.sink.add(timer.tick);
    });
  }

  late Timer _timer;
  final StreamController<int> _streamController = StreamController();

  @override
  Future<ExampleDataModel> fetchData() async {
    return ExampleDataModel.from(await Future.value());
  }

  @override
  Stream<int> dataFeed() => _streamController.stream;

  @override
  void dispose() {
    _timer.cancel();
    _streamController.close();
    super.dispose();
  }
}
