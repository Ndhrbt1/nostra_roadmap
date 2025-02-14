import 'package:flutter/material.dart';
import 'a.left_container.dart';
import 'b.right_container.dart';

class ScreenHorizontal extends StatelessWidget {
  const ScreenHorizontal({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const LeftContainer(),
        RightContainer(width: width),
      ],
    );
  }
}
