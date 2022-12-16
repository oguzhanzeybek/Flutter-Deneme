import 'package:flutter/material.dart';




class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color textcolor;
  const CustomTextButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.textcolor = Colors.red ,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(color: textcolor),
        ));
  }
}
