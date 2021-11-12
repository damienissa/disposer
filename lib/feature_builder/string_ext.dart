/// FeatureBuilderHelper this is a helper extension to apply `Module Name` to path and data
extension FeatureBuilderHelper on String {
  /// Apply `moduleName` to a data
  String dataWith(String moduleName) => replaceAll(
          'Template', moduleName[0].toUpperCase() + moduleName.substring(1))
      .replaceAll('template', moduleName.toLowerCase());

  /// Apply `moduleName` to a path
  String pathWith(String moduleName) =>
      replaceAll('template', moduleName.toLowerCase())
          .replaceAll('src/', 'lib/features/${moduleName.toLowerCase()}/');
}
