import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/helper/app_bar.dart';
import 'package:login/helper/bottom_app_bar.dart';
import 'package:login/presentation/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBarCommon(),
        bottomNavigationBar: BottomAppbarCommon(),
      ),
    );
  }
}

