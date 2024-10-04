import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/common/blocs/auth/auth_bloc.dart';
import 'package:login/common/blocs/event/events_bloc.dart';
import 'package:login/common/blocs/role/role_bloc.dart';
import 'package:login/common/widgets/bottom_body_screen.dart';
import 'package:login/core/routes/screen_routes.dart';
import 'package:login/features/presentation/apps.dart';
import 'package:login/features/presentation/auth_screen/presentation/screens/loginscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/features/presentation/auth_screen/presentation/screens/signupscreen.dart';
import 'package:login/features/presentation/main_screens.dart/favorite_screen/presentation/screens/favorite_screen.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/screens/home_screen.dart';
import 'package:login/features/presentation/main_screens.dart/profile_screen/presentation/screens/profile_screen.dart';
import 'package:login/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Apps();
  }
}

