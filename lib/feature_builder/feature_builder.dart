import 'constants.dart';
import 'helper.dart';

/// Future builder main component
abstract class FeatureBuilder {
  /// Build method with *[moduleName]* parameter
  static void build({required String moduleName, String? rootPath}) {
    dataMap.apply(name: moduleName, path: rootPath).generate();
  }
}
