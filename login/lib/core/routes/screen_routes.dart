import 'package:flutter/material.dart';
import 'package:login/common/widgets/bottom_body_screen.dart';
import 'package:login/features/presentation/auth_screen/presentation/screens/loginscreen.dart';
import 'package:login/features/presentation/auth_screen/presentation/screens/signupscreen.dart';
import 'package:login/features/presentation/main_screens.dart/favorite_screen/presentation/screens/favorite_screen.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/screens/home_screen.dart';
import 'package:login/features/presentation/main_screens.dart/profile_screen/presentation/screens/profile_screen.dart';
import 'package:login/splash_screen.dart';

class MaterialAppsAndRoutesScreen extends StatelessWidget {
  const MaterialAppsAndRoutesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Design Start",
      theme: ThemeData(
          primarySwatch: Colors.grey,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)
          // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Loginscreen(),
        '/signup': (context) => const Signupscreen(),
        '/body': (context) => const BottomBodyScreen(),
        '/home': (context) => const HomeScreen(),
        // '/video': (context) => const PlayScreen(),
        '/favorite': (context) => const FavoriteScreen(),
        '/profile': (context) => const ProfileScreen(),
        // '/event-image': (context) =>  EventImages(eventData: eventData)
      },
      // home: child,
    );
  }
}
