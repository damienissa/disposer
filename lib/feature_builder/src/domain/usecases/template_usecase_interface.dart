/// Usecase template
const domainUsecaseTemplateInterfaceFile = r'''
import 'package:disposer/disposer.dart';
import '../entities/template_entitie.dart';
import '../repositories/template_repository.dart';

abstract class ITemplateUsecase with Disposable {

  abstract final ITemplateRepository domainRepository;

  @override
  List<Disposable> get disposables => [domainRepository];

  Future<TemplateEntitie> fetchEntitie();

  Stream<double> dataFeed();
}
''';
