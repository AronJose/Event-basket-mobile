import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputFieldTexts extends StatefulWidget {
  const InputFieldTexts({
    super.key,
    required this.controller,
    required this.placeholderValue,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.errorvalue,
  });

  final TextEditingController controller;
  final String placeholderValue;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? errorvalue;

  @override
  State<InputFieldTexts> createState() => _InputFieldTextsState();
}

class _InputFieldTextsState extends State<InputFieldTexts> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        hintText: widget.placeholderValue,
        hintStyle: const TextStyle(color: Colors.grey,fontSize: 15),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide(
            color: Colors.red.withValues(alpha:0.8),
            width: 2,
          ),
        ),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return widget.errorvalue;
            }
            return null;
          },
    );
  }
}
