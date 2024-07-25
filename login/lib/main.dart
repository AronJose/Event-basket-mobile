import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/blocs/auth/auth_bloc.dart';
import 'package:login/blocs/role/role_bloc.dart';
import 'package:login/presentation/auth_screen/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => RoleBloc(),
        )
      ],
      child: const MaterialApp(
        title: "Design Start",
        home: Loginscreen(),
      ),
    );
  }
}
