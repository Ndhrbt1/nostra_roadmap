import 'package:flutter/material.dart';

class CounterStatefull extends StatefulWidget {
  const CounterStatefull({super.key});

  @override
  State<CounterStatefull> createState() => _CounterStatefullState();
}

class _CounterStatefullState extends State<CounterStatefull> {
  var number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter Statefull'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(), textScaler: const TextScaler.linear(2)),
              OutlinedButton(
                onPressed: () {
                  setState(() {});
                  number++;
                  debugPrint(number.toString());
                },
                child: const Text('increment'),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  setState(() {});
                  number--;
                  debugPrint(number.toString());
                },
                child: const Text('decrement'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
