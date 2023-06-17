import 'package:flutter/material.dart';

import 'Custom_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icone});
  final String title;
  final IconData icone;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30),
        ),
        const Spacer(),
        CustomIcon(
          icone: icone,
        )
      ],
    );
  }
}
