import 'package:flutter/material.dart';
import 'package:nostra_roadmap/ui_screens/widgets/horizontal.dart';

import 'package:nostra_roadmap/ui_screens/widgets/vertical.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              height: 1200,
              child: width > 850 ? ScreenHorizontal(width: width) : ScreenVertical(width: width),
            ),
          ),
        ],
      ),
    );
  }
}
