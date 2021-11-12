library disposer;

import 'dart:async';

import 'package:disposer/disposer.dart';

/// This is a helper extension to manage `StreamSubscription`
extension CanceledBy on StreamSubscription {
  void canceledBy(StreamListenable listener) {
    listener.add(this);
  }
}
