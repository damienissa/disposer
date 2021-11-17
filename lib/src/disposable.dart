library disposer;

import 'dart:developer';

import 'package:flutter/foundation.dart';

mixin Disposable {
  /// Provides disposable dependencies of the instance
  /// - Example:
  ///   ``` dart
  ///   List<Disposable> get disposables => [
  ///     instance1, instance2
  ///   ]
  ///   ```
  ///
  List<Disposable> get disposables => [];

  bool _disposed = false;

  /// All disposable instances must be disposed
  ///
  /// - Bad:
  ///   ``` dart
  ///   void main() {
  ///      Disposable? instance;
  ///   }
  ///  ```
  ///
  ///
  /// - Good:
  ///
  ///   ``` dart
  ///   void main() {
  ///     Disposable? instance;
  ///     instance?.dispose();
  ///   }
  ///   ```
  ///
  ///   Also, `dispose()` method can be overrided to finish all needed tasks
  ///
  /// - Example:
  ///   ``` dart
  ///   void dispose() {
  ///      super.dispose();
  ///      foo.finishFetching();
  ///   }
  ///   ```
  ///
  @mustCallSuper
  void dispose() {
    assert(!_disposed, 'You try to dispose the instance that was disposed');
    for (Disposable element in disposables) {
      element.dispose();
    }
    _disposed = true;
    onDispose();
  }

  /// This methods will be called when the instance will disposed
  ///
  /// - Example:
  ///   ``` dart
  ///   void onDispose() {
  ///      super.onDispose();
  ///      print('Instance was disposed');
  ///   }
  ///  ```
  ///
  @mustCallSuper
  void onDispose() {
    log(runtimeType.toString() + ' Disposed');
  }
}
