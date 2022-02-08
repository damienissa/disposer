import 'package:flutter/material.dart';

import '../view_models/example_view_state.dart';
import '../view_models/example_view_model_interface.dart';
import '../widgets/example_widget.dart';

class ExamplePage extends StatefulWidget {
  final IExampleViewModel viewModel;
  ExamplePage({
    Key? key,
    required this.viewModel,
  }) : super(key: key) {
    viewModel.fetch();
  }

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    widget.viewModel.dispose();
    super.dispose();
  }

  ExampleViewState get state => widget.viewModel.state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: state.entitie == null
          ? Container()
          : ExampleWidget(
              entitie: state.entitie!,
            ),
    );
  }
}
