import 'package:flutter/material.dart';

import '../../domain/entities/template_entitie.dart';

class TemplateWidget extends StatelessWidget {
  const TemplateWidget({
    Key? key,
    required this.entitie,
  }) : super(key: key);

  final TemplateEntitie entitie;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(entitie.value),
    );
  }
}
