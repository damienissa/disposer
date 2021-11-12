import 'package:disposer/disposer.dart';
import '../entities/example_entitie.dart';
import '../repositories/example_domain_repository.dart';

class ExampleUsecase with Disposable {
  ExampleUsecase(this.domainRepository);

  final ExampleDomainRepository domainRepository;

  @override
  List<Disposable> get disposables => [domainRepository];

  Future<ExampleEntitie> fetchEntitie() {
    return domainRepository.fetchEntitie();
  }

  Stream<double> dataFeed() => domainRepository.dataFeed();
}
