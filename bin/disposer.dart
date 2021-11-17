import 'dart:developer';

import 'package:args/args.dart';
import 'package:disposer/feature_builder/feature_builder.dart';

/// The future generator entry point
void main(List<String> arguments) {
  var argParser = ArgParser();
  argParser.addOption('name', abbr: 'n');
  argParser.addOption('output', abbr: 'o');
  var results = argParser.parse(arguments);

  if (results['name'] != null) {
    FeatureBuilder.build(
        moduleName: results['name'], rootPath: results['output']);
  } else {
    log('dart pub global run feature_builder --name ModuleName');
  }
}
