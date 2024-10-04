import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/common/blocs/auth/auth_bloc.dart';
import 'package:login/common/blocs/event/events_bloc.dart';
import 'package:login/common/blocs/role/role_bloc.dart';
import 'package:login/core/routes/screen_routes.dart';

class BlocProvidersScreen extends StatelessWidget {
  const BlocProvidersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
      child: const MaterialAppsAndRoutesScreen(),
    );
  }
}

