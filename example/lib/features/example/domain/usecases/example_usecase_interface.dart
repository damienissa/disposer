import 'package:disposer/disposer.dart';
import '../entities/example_entitie.dart';
import '../repositories/example_repository.dart';

abstract class IExampleUsecase with Disposable {

  abstract final IExampleRepository domainRepository;

  @override
  List<Disposable> get disposables => [domainRepository];

  Future<ExampleEntitie> fetchEntitie();

  Stream<double> dataFeed();
}
