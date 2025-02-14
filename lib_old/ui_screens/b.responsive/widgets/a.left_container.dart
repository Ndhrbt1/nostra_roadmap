import 'package:flutter/material.dart';

class LeftContainer extends StatelessWidget {
  const LeftContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.white,
      child: const FlutterLogo(),
    );
  }
}
