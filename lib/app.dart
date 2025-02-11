import 'package:flutter/material.dart';
// import 'package:nostra_roadmap/ui_screens/counter_statefull.dart';
import 'package:nostra_roadmap/ui_screens/b.responsive.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nostra_roadmap',
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const CounterStatefull(),
      home: const Responsive(),
    );
  }
}
