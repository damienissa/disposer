import 'dart:async';
import 'dart:developer';

import 'package:disposer/disposer.dart';

class TemplateDataSource with Disposable {
  TemplateDataSource() {
    _timer = Timer.periodic(const Duration(milliseconds: 1), (timer) {
      log(timer.tick.toString());
      _streamController.sink.add(timer.tick);
    });
  }

  late Timer _timer;
  final StreamController<int> _streamController = StreamController();

  Future<dynamic> fetchData() {
    return Future.value();
  }

  Stream<int> dataFeed() => _streamController.stream;

  @override
  void dispose() {
    _timer.cancel();
    _streamController.close();
    super.dispose();
  }
}
