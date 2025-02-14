import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        context.read<FavoriteBloc>().add(const GetFavorites());
      },
    );
    return BlocBuilder<FavoriteBloc, FavoriteState>(
      builder: (context, state) {
        if (state.favoriteList == null) {
          return const Center(child: Text("No Favorited Event Data Available!"));
        }

        if (state.loading == true) {
          return const Center(child: CircularProgressIndicator());
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
          child: ListView.builder(
            itemCount: state.favoriteList?.eventId.length,
            itemBuilder: (context, listIndex) {
              // final event = state.eventsData[index];
              final favoriteEvent = state.favoriteList;
              return HomeCard(
                isFavorite: true,
                favoriteEvent: favoriteEvent,
              );
            },
          ),
        );
      },
    );
  }
}
