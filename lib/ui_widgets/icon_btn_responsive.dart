import 'package:flutter/material.dart';

class IconBtnResponsive extends StatelessWidget {
  const IconBtnResponsive({
    super.key,
    required this.iconx,
  });
  final IconData iconx;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 50,
      width: 50,
      color: Colors.transparent,
      child: IconButton(
        onPressed: () {},
        icon: Icon(iconx),
      ),
    );
  }
}
