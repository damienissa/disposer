import 'package:args/args.dart';
import 'package:disposer/feature_builder/feature_builder.dart';

void main(List<String> arguments) {
  var argParser = ArgParser();
  argParser.addOption('name', abbr: 'n');
  var results = argParser.parse(arguments);

  if (results['name'] != null) {
    FeatureBuilder.build(moduleName: results['name']);
  } else {
    print('dart pub global run feature_builder --name ModuleName');
  }
}
