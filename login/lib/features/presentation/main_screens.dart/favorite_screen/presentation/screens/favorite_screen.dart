import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/core/blocs/favorite/favorite_bloc.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
     WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<FavoriteBloc>().add(const GetFavorites());
      },
    );
    return const Scaffold(
      body: Center(
        child: Text("FavoriteScreen Screen"),
      ),
    );
  }
}