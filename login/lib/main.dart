import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/common/blocs/auth/auth_bloc.dart';
import 'package:login/common/blocs/event/events_bloc.dart';
import 'package:login/common/blocs/role/role_bloc.dart';
import 'package:login/common/helper/bottom_body_screen.dart';
import 'package:login/features/presentation/auth_screen/loginscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/features/presentation/auth_screen/signupscreen.dart';
import 'package:login/features/presentation/main_screens.dart/favorite_screen.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen.dart';
import 'package:login/features/presentation/main_screens.dart/play_screen.dart';
import 'package:login/features/presentation/main_screens.dart/profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AuthBloc(),
            ),
            BlocProvider(
              create: (context) => RoleBloc(),
            ),
            BlocProvider(
              create: (context) => EventsBloc(),
            )
          ],
          child: MaterialApp(
            title: "Design Start",
            theme: ThemeData(
              primarySwatch: Colors.blue,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
              // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => const Loginscreen(),
              '/signup': (context) => const Signupscreen(),
              '/body': (context) => const BottomBodyScreen(),
              '/home': (context) => const HomeScreen(),
              '/video': (context) => const PlayScreen(),
              '/favorite': (context) => const FavoriteScreen(),
              '/profile': (context) => const ProfileScreen(),
            },
            // home: child,
          ),
        );
      },
    );
  }
}
