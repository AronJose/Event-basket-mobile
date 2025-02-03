import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/core/blocs/profile/profile_bloc.dart';
import 'package:login/core/models/profile_modal.dart';
import 'package:login/features/presentation/main_screens.dart/profile_screen/widgets/edit_button_row.dart';
import 'package:login/features/presentation/main_screens.dart/profile_screen/widgets/profile_image_grid_widget.dart';
import 'package:login/features/presentation/main_screens.dart/profile_screen/widgets/top_name_bord_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool showPhotos = true;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<ProfileBloc>().add(const GetProfile());
      },
    );
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.error != null) {
          return Center(
            child: Text(state.error!),
          );
        }
        if (state.profileDetails == null) {
          return const Center(child: Text("No profile information available."));
        }
        return Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            height: MediaQuery.of(context).size.height * .74.h,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white10,
                width: 10.w,
              ),
              borderRadius: BorderRadius.circular(2.r),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 221, 218, 218),
                  blurRadius: 10.r,
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 130.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          width: 1.0,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          state.profileDetails?.profileData.first.image ??
                              'images/logo.png',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 40,
                        ),
                        child: TopNameBordWidget(
                            profileData: state.profileDetails!),
                      ),
                    )
                  ],
                ),
                // --------------------------------------- first row-------------------------------
                const EditButtonRow(),
                const SizedBox(
                  height: 10,
                ),
                // ---------------------------------second row -----------------------------
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:
                          const Color.fromARGB(255, 29, 63, 91).withAlpha(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButtonCommon(
                        colorText: const Color.fromARGB(255, 82, 82, 82),
                        onPressed: () {
                          setState(() {
                            showPhotos = showPhotos == true ? true : false;
                          });
                          print(showPhotos);
                        },
                        sizeButton: FontWeight.w700,
                        textName: "Photos",
                      ),
                      Transform.rotate(
                        angle: 90 * pi / 180,
                        child: const Icon(Icons.minimize,
                            color: Color.fromARGB(255, 82, 82, 82)),
                      ),
                      TextButtonCommon(
                        colorText: const Color.fromARGB(255, 82, 82, 82),
                        onPressed: () {},
                        sizeButton: FontWeight.w700,
                        textName: 'Videos',
                      ),
                      Transform.rotate(
                        angle: 90 * pi / 180,
                        child: const Icon(Icons.minimize,
                            color: Color.fromARGB(255, 82, 82, 82)),
                      ),
                      TextButtonCommon(
                        colorText: const Color.fromARGB(255, 82, 82, 82),
                        onPressed: () {},
                        sizeButton: FontWeight.w700,
                        textName: 'Lives',
                      ),
                    ],
                  ),
                ),
                // ---------------------------------third row -----------------------------
                ProfileImagesGridWidget(
                    showPhotos: showPhotos,
                    profileDetails: state.profileDetails!)
              ],
            ),
          ),
        );
      },
    );
  }
}

class TextButtonCommon extends StatelessWidget {
  const TextButtonCommon({
    super.key,
    required this.colorText,
    required this.onPressed,
    required this.sizeButton,
    required this.textName,
    this.fontsize,
  });

  final Color colorText;
  final VoidCallback onPressed;
  final FontWeight sizeButton;
  final String textName;
  final double? fontsize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          textName,
          style: TextStyle(
              fontWeight: sizeButton, color: colorText, fontSize: fontsize),
        ));
  }
}
