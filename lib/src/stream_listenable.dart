library disposer;

import 'dart:async';

/// StreamListenable `mixin` that helps to manage `StreamSubscription`
mixin StreamListenable {
  final List<StreamSubscription> _subscriptions = [];

  /// Must be called in `dispose();`
  void unsubscribe() {
    for (StreamSubscription element in _subscriptions) {
      element.cancel();
    }
  }

  /// Addring new `StreamSubscription`
  void add(StreamSubscription subscription) {
    _subscriptions.add(subscription);
  }
}
