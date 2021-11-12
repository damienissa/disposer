import 'dart:async';
import 'package:flutter_test/flutter_test.dart';

import 'package:disposer/disposer.dart';

class Example with Disposable {
  @override
  void dispose() {
    super.dispose();
    print('disposed');
  }
}

class Example2 with StreamListenable {
  Example2() {
    final controller = StreamController();
    Timer.periodic(const Duration(microseconds: 1), (_) {
      controller.add('event');
    });

    controller.stream.listen((event) {
      print(event);
      controller.close();
    }).canceledBy(self);
  }
}

void main() {
  test(
    "test description",
    () async {
      final first = Example();
      final second = Example2();
      first.dispose();
      second.unsubscribe();
      await Future.delayed(const Duration(seconds: 3));
    },
  );
}
