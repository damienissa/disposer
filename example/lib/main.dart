import 'dart:async';

import 'package:disposer/disposer.dart';
import 'package:example/features/app.dart';
import 'package:flutter/material.dart';

void main() {
  final LocalDataSource localDataSource = LocalDataSource();
  final RemoteDataSource remoteDataSource = RemoteDataSource();
  final DataRepository dataRepository = DataRepository(
    localDataSource: localDataSource,
    remoteDataSource: remoteDataSource,
  );
  final DataUsecase dataUsecase = DataUsecase(repository: dataRepository);
  dataUsecase.dispose();

  // Output:
  /*
    [log] LocalDataSource Disposed
    [log] RemoteDataSource Disposed
    [log] DataRepository Disposed
    [log] DataUsecase Disposed
  */

  runApp(const MyApp());
}

class LocalDataSource with Disposable {
  final streamController = StreamController.broadcast();

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }
}

class RemoteDataSource with Disposable {
  final streamController = StreamController.broadcast();

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }
}

class DataRepository with Disposable {
  DataRepository({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  List<Disposable> get disposables => [
        localDataSource,
        remoteDataSource,
      ];

  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;
}

class DataUsecase with Disposable {
  DataUsecase({
    required this.repository,
  });

  @override
  List<Disposable> get disposables => [
        repository,
      ];

  final DataRepository repository;
}
