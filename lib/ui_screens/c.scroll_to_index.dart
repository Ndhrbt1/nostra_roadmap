import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ScrollToIndex extends StatelessWidget {
  const ScrollToIndex({super.key});

  @override
  Widget build(BuildContext context) {
    final autoScrollCt = AutoScrollController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll to Index'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              autoScrollCt.scrollToIndex(1, preferPosition: AutoScrollPosition.begin);
            },
            child: const Text("1"),
          ),
          TextButton(
            onPressed: () {
              autoScrollCt.scrollToIndex(2);
            },
            child: const Text("2"),
          ),
        ],
      ),
      body: ListView(
        controller: autoScrollCt,
        children: [
          AutoScrollTag(
            key: const ValueKey(1),
            controller: autoScrollCt,
            index: 1,
            child: SizedBox(
              height: 800,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AutoScrollTag(
            key: const ValueKey(2),
            controller: autoScrollCt,
            index: 2,
            child: SizedBox(
              height: 800,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
