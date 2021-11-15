const presentationPageTemplateFile = r'''
import 'package:flutter/material.dart';

import '../view_models/template_view_model.dart';
import '../widgets/template_widget.dart';


class TemplatePage extends StatefulWidget {
  final TemplateViewModel viewModel;
  TemplatePage({
    Key? key,
    required this.viewModel,
  }) : super(key: key) {
    viewModel.fetch();
  }

  @override
  State<TemplatePage> createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {
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
        title: const Text('Template'),
      ),
      body: widget.viewModel.entitie == null
          ? Container()
          : TemplateWidget(
              entitie: widget.viewModel.entitie!,
            ),
    );
  }
}

''';
