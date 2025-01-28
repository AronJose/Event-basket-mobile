import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(const Duration(seconds: 3),() {
        Navigator.pushReplacementNamed(context,'/login');
      },);
    },);
    return const Scaffold(
      body: Center(child: Text("Event Zone Connect"),),
    );
  }
}