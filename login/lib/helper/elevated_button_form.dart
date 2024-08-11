import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevatedButtonForms extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final VoidCallback onPressed;
  final String buttonText;
  final Color colorButton;
  final Size sizeButton;

  const ElevatedButtonForms(
      {super.key,
      required this.formKey,
      required this.onPressed,
      required this.buttonText,
      required this.sizeButton,
      required this.colorButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(sizeButton),
        backgroundColor: WidgetStateProperty.all(
          colorButton,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white,
            fontSize: 17.spMax,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
