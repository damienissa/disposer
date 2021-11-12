import 'package:flutter/material.dart';

import '../view_models/example_view_model.dart';
import '../widgets/example_widget.dart';

class ExamplePage extends StatelessWidget {
  final ExampleViewModel viewModel;
  final Function() willDispose;
  ExamplePage({
    Key? key,
    required this.viewModel,
    required this.willDispose,
  }) : super(key: key) {
    viewModel.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          willDispose();
          return true;
        },
        child: AnimatedBuilder(
            animation: viewModel,
            builder: (BuildContext context, _) {
              return viewModel.entitie == null
                  ? Container()
                  : ExampleWidget(
                      entitie: viewModel.entitie!,
                    );
            }),
      ),
    );
  }
}
