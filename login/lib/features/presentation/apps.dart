import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/core/blocproviders/bloc_providers_screen.dart';
import 'package:login/main.dart';

class Apps extends StatelessWidget {
  const Apps({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const BlocProvidersScreen();
      },
    );
  }
}