/// FeatureBuilderHelper this is a helper extension to apply `Module Name` to path and data
extension FeatureBuilderHelper on String {
  /// Apply `moduleName` to a data
  String dataWith(String moduleName) => replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', _camelCaseToUpperUnderscore(moduleName));

  /// Apply `moduleName` to a path
  String pathWith(String moduleName, {String? rootPath}) => replaceAll(
          'template', _camelCaseToUpperUnderscore(moduleName))
      .replaceAll('src/',
          '${rootPath ?? 'lib/features'}/${_camelCaseToUpperUnderscore(moduleName)}/');

  String _camelCaseToUpperUnderscore(String s) {
    var sb = StringBuffer();
    var first = true;
    s.runes.forEach((int rune) {
      var char = String.fromCharCode(rune);
      if (_isUpperCase(char) && !first) {
        sb.write('_');
        sb.write(char.toUpperCase());
      } else {
        first = false;
        sb.write(char.toUpperCase());
      }
    });
    return sb.toString().toLowerCase();
  }

  bool _isUpperCase(String s) {
    return s == s.toUpperCase();
  }
}
