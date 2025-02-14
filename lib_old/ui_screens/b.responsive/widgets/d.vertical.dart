import 'package:flutter/material.dart';
import 'a.left_container.dart';
import 'b.right_container.dart';

class ScreenVertical extends StatelessWidget {
  const ScreenVertical({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const LeftContainer(),
          RightContainer(width: width),
        ],
      ),
    );
  }
}
