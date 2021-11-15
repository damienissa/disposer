import 'package:flutter/material.dart';

import '../view_models/example_view_model.dart';
import '../widgets/example_widget.dart';


class ExamplePage extends StatefulWidget {
  final ExampleViewModel viewModel;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: widget.viewModel.entitie == null
          ? Container()
          : ExampleWidget(
              entitie: widget.viewModel.entitie!,
            ),
    );
  }
}

