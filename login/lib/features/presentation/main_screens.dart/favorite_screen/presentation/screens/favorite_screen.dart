import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/core/blocs/favorite/favorite_bloc.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/widgets/home_card.dart';

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
        context.read<FavoriteBloc>().add(const GetFavoritesList());
      },
    );
    return BlocBuilder<FavoriteBloc, FavoriteState>(
      builder: (context, state) {
        if (state.loading == true) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.favoriteList == null || state.favoriteList!.isEmpty) {
          return const Center(
              child: Text("No Favorited Event Data Available!"));
        }

        return ListView.builder(
            itemCount: state.favoriteList!.length,
            itemBuilder: (context, index) {
              final favorite = state.favoriteList![index];
        return HomeCard(favoriteEvent: favorite,);
            });
      },
    );
  }
}
