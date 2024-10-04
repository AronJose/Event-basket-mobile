
import 'package:flutter/material.dart';

class IconsButtonsCommon extends StatelessWidget {
  const IconsButtonsCommon({
    super.key,
    required this.iconModel,
    required this.iconColor,
    required this.onPressed,
  });

  final Icon iconModel;
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: iconModel,
      color: iconColor,
    );
  }
}