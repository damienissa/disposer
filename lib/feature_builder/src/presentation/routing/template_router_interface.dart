/// Router interface template
const presentationRoutingInterfaceTemplateFile = r'''
abstract class ITemplateRouter {
  void goToNextPage({List<dynamic>? args});
  void moveBack({List<dynamic>? args});
}
''';
