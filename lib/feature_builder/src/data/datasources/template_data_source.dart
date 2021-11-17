/// DataSource template
const datasourceTemplateFile = r'''
import 'dart:async';
import 'dart:developer';

import 'package:disposer/disposer.dart';

import '../models/template_data_model.dart';

class TemplateDataSource with Disposable {
  TemplateDataSource() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      log(timer.tick.toString());
      _streamController.sink.add(timer.tick);
    });
  }

  late Timer _timer;
  final StreamController<int> _streamController = StreamController();

  Future<TemplateDataModel> fetchData() async {
    return TemplateDataModel.from(await Future.value());
  }

  Stream<int> dataFeed() => _streamController.stream;

  @override
  void dispose() {
    _timer.cancel();
    _streamController.close();
    super.dispose();
  }
}
''';
