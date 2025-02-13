import 'package:flutter/material.dart';
import 'package:nostra_roadmap/ui_widgets/icon.btn.responsive.dart';

class RightContainer extends StatelessWidget {
  const RightContainer({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      color: Colors.blue,
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 20),
          const Text(
            'Hello, Welcome to NostraCode',
            textScaler: TextScaler.linear(2.5),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          const Text(
            '''This is a responsive UI! Let's play with us''',
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Container(
            height: 50,
            color: Colors.blue.shade900,
            child: Row(
              mainAxisAlignment: width > 850 ? MainAxisAlignment.end : MainAxisAlignment.center,
              children: const [
                IconBtnResponsive(iconx: Icons.coronavirus),
                IconBtnResponsive(iconx: Icons.masks),
                IconBtnResponsive(iconx: Icons.no_meals),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
