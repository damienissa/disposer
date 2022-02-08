/// Usecase template
const domainUsecaseTemplateFile = r'''

import '../entities/template_entitie.dart';
import '../repositories/template_repository.dart';
import 'template_usecase_interface.dart';

class TemplateUsecase extends ITemplateUsecase {
  TemplateUsecase(this.domainRepository);
  
  @override
  final ITemplateRepository domainRepository;
  
  @override
  Future<TemplateEntitie> fetchEntitie() {
    return domainRepository.fetchEntitie();
  }
  
  @override
  Stream<double> dataFeed() => domainRepository.dataFeed();
}
''';
