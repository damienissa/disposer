library disposer;

import 'dart:async';

import 'package:disposer/disposer.dart';

extension CanceledBy on StreamSubscription {
  void canceledBy(StreamListenable listener) {
    listener.add(this);
  }
}
