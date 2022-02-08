/// DataSource template
const datasourceTemplateFile = r'''
import 'dart:async';
import 'dart:developer';

import '../models/template_data_model.dart';
import 'template_data_source_interface.dart';

class TemplateDataSource extends ITemplateDataSource {
  TemplateDataSource() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      log(timer.tick.toString());
      _streamController.sink.add(timer.tick);
    });
  }

  late Timer _timer;
  final StreamController<int> _streamController = StreamController();

  @override
  Future<TemplateDataModel> fetchData() async {
    return TemplateDataModel.from(await Future.value());
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
''';
