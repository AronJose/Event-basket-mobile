import 'package:flutter/material.dart';
import 'package:login/helper/app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(appBar: MyAppBarCommon()),
    );
  }
}
