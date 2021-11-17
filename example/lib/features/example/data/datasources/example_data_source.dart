import 'dart:async';
import 'dart:developer';

import 'package:disposer/disposer.dart';

import '../models/example_data_model.dart';

class ExampleDataSource with Disposable {
  ExampleDataSource() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      log(timer.tick.toString());
      _streamController.sink.add(timer.tick);
    });
  }

  late Timer _timer;
  final StreamController<int> _streamController = StreamController();

  Future<ExampleDataModel> fetchData() async {
    return ExampleDataModel.from(await Future.value());
  }

  Stream<int> dataFeed() => _streamController.stream;

  @override
  void dispose() {
    _timer.cancel();
    _streamController.close();
    super.dispose();
  }
}
