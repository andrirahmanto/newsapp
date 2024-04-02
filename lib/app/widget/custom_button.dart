import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final double width;
  final double height;
  final Color color;
  final Color borderColor;

  const CustomButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 43,
    this.color = const Color(0xff1FA0C9),
    this.borderColor = const Color(0xff1FA0C9),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: borderColor),
              borderRadius: BorderRadius.circular(4),
            ),
            elevation: 0, // Remove the shadow
          ),
          child: child),
    );
  }
}
