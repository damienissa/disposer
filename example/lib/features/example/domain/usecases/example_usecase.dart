
import '../entities/example_entitie.dart';
import '../repositories/example_repository.dart';
import 'example_usecase_interface.dart';

class ExampleUsecase extends IExampleUsecase {
  ExampleUsecase(this.domainRepository);
  
  @override
  final IExampleRepository domainRepository;
  
  @override
  Future<ExampleEntitie> fetchEntitie() {
    return domainRepository.fetchEntitie();
  }
  
  @override
  Stream<double> dataFeed() => domainRepository.dataFeed();
}
