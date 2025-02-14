import 'package:flutter/material.dart';
import 'a.counter.sm.data.dart';
import 'b.counter.sm.ctrl.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class CounterSM extends StatelessWidget {
  const CounterSM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter State Management'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OnReactive(
                  () => Text(
                    '${rxNumber.state}',
                    textScaler: const TextScaler.linear(3),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterSmCtrl.increment();
                  },
                  child: const Text(
                    "Counter Sync",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OnBuilder.all(
                  listenTo: rxNumberAsync,
                  onWaiting: () => const CircularProgressIndicator(),
                  onError: (error, refreshError) => Text(error.toString()),
                  onData: (data) => Text(
                    '${rxNumberAsync.state}',
                    textScaler: const TextScaler.linear(3),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    counterSmCtrl.incrementAsync();
                  },
                  child: const Text(
                    "Counter Async",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
