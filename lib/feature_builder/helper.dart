import 'dart:io';

/// FeatureBuilderHelper this is a helper extension to apply `Module Name` to path and data
extension FeatureBuilderStringHelper on String {
  /// Apply `moduleName` to a data
  String _dataWith(String moduleName) => replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', _camelCaseToUpperUnderscore(moduleName));

  /// Apply `moduleName` to a path
  String _pathWith(String moduleName, {String? rootPath}) => replaceAll(
          'template', _camelCaseToUpperUnderscore(moduleName))
      .replaceAll('src/',
          '${rootPath ?? 'lib/features'}/${_camelCaseToUpperUnderscore(moduleName)}/');

  String _camelCaseToUpperUnderscore(String s) {
    var sb = StringBuffer();
    var first = true;
    for (int rune in s.runes) {
      var char = String.fromCharCode(rune);
      if (_isUpperCase(char) && !first) {
        sb.write('_');
        sb.write(char.toUpperCase());
      } else {
        first = false;
        sb.write(char.toUpperCase());
      }
    }
    return sb.toString().toLowerCase();
  }

  bool _isUpperCase(String s) {
    return s == s.toUpperCase();
  }
}

/// FeatureBuilderMapHelper
extension FeatureBuilderMapHelper on Map<String, String> {
  /// Apply method uses [name] and [path] to update template data with it
  Map<String, String> apply({required String name, String? path}) {
    return map((key, value) =>
        MapEntry(key._pathWith(name, rootPath: path), value._dataWith(name)));
  }

  /// Generate generating files
  void generate() {
    forEach(
      (key, value) => File(key)
        ..createSync(recursive: true)
        ..writeAsStringSync(value),
    );
  }
}
