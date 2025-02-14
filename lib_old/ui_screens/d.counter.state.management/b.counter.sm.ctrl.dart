import 'package:flutter/foundation.dart';
import 'a.counter.sm.data.dart';

final counterSmCtrl = CounterSmCtrl();

class CounterSmCtrl {
  void increment() {
    rxNumber.state++;
    debugPrint(rxNumber.toString());
  }

  Future<int> incrementx() async {
    await Future.delayed(const Duration(seconds: 2));
    rxNumberAsync.state++;
    debugPrint(rxNumberAsync.toString());
    return rxNumberAsync.state;
  }

  void incrementAsync() {
    rxNumberAsync.stateAsync = incrementx();
  }
}
