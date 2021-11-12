import 'package:flutter/material.dart';

import '../../domain/entities/example_entitie.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({
    Key? key,
    required this.entitie,
  }) : super(key: key);

  final ExampleEntitie entitie;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(entitie.value),
    );
  }
}
