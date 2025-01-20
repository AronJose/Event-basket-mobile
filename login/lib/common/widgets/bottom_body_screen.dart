import 'package:flutter/material.dart';
import 'package:login/features/presentation/app_bar.dart';
import 'package:login/features/presentation/bottom_app_bar.dart';
import 'package:login/features/presentation/second_app_bar_screen.dart';
import 'package:login/features/presentation/main_screens.dart/favorite_screen/presentation/screens/favorite_screen.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/screens/home_screen.dart';
import 'package:login/features/presentation/main_screens.dart/videos_screen/presentation/widgets/multi_vedio.dart';
import 'package:login/features/presentation/main_screens.dart/profile_screen/presentation/screens/profile_screen.dart';

class BottomBodyScreen extends StatelessWidget {
  const BottomBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ValueListenableBuilder(
          valueListenable: bottomNavNotifier,
          builder: (context, index, _) {
            return Scaffold(
              appBar: const MyAppBarCommon(),
              body: Column(
                children: [
                  if (index != 3) const SecondAppBarScreen(),
                  Expanded(
                      child: [
                    const HomeScreen(),
                    const MultipleVedio(),
                    const FavoriteScreen(),
                    const ProfileScreen(),
                  ][index])
                ],
              ),
              bottomNavigationBar: const BottomAppbarCommon(),
            );
          }),
    );
  }
}
