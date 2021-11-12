import 'package:flutter/material.dart';

import '../view_models/template_view_model.dart';
import '../widgets/template_widget.dart';

class TemplatePage extends StatelessWidget {
  final TemplateViewModel viewModel;
  final Function() willDispose;
  TemplatePage({
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
        title: const Text('Template'),
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
                  : TemplateWidget(
                      entitie: viewModel.entitie!,
                    );
            }),
      ),
    );
  }
}
