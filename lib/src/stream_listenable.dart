library disposer;

import 'dart:async';

mixin StreamListenable {
  final List<StreamSubscription> _subscriptions = [];
  StreamListenable get self => this;

  void unsubscribe() {
    for (StreamSubscription element in _subscriptions) {
      element.cancel();
    }
  }

  void add(StreamSubscription subscription) {
    _subscriptions.add(subscription);
  }
}
