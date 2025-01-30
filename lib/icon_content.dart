import 'package:flutter/material.dart';

const iconSize = 80.0;
const labelTextStyle = TextStyle(fontSize: 18.0, color: Colors.white);

class IconWithBottomText extends StatelessWidget {
  const IconWithBottomText(
      {super.key, required this.icon, required this.label});

  final IconData icon;
  // ADD A ? TO MAKE IT OPTIONAL, WHO EVER THOUGHT OF THIS? fml ay lmao
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        Icon(icon, size: iconSize),
        const SizedBox(
          height: 10,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
