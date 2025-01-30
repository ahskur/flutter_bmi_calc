import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {super.key, required this.containerColor, this.cardChild, this.onPress});

  void Function()? onPress;
  final Color containerColor;
  // ADD A ? TO MAKE IT OPTIONAL, WHO EVER THOUGHT OF THIS? fml ay lmao
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 200.0,
        width: 170.0,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: containerColor,
        ),
        child: cardChild,
      ),
    );
  }
}
