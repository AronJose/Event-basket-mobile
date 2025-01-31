import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/widgets/elevated_button_form.dart';
import 'package:login/common/widgets/icon_button.dart';
import 'package:login/core/blocs/profile/profile_bloc.dart';
import 'package:read_more_text/read_more_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<ProfileBloc>().add(const GetProfile());
      },
    );
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
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
                          'images/logo.png',
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ARON JOSE',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                                color: Color.fromARGB(255, 88, 88, 88),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 15,
                                  color: Color.fromARGB(255, 126, 125, 125),
                                ),
                                Text(
                                  "Ayamkudy",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromARGB(255, 126, 125, 125),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: ReadMoreText(
                                '''Event management includes planning,organizing, and executing events to ensure smooth operation and success. Key tasks involve budgeting, venue selection, vendor coordination, and marketing.''',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 112, 111, 111),
                                  fontWeight: FontWeight.w500,
                                ),
                                numLines: 3,
                                readMoreText: '',
                                readLessText: '',
                                readMoreIcon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Colors.blue,
                                ),
                                readLessIcon: Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.blue,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                // --------------------------------------- first row-------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButtonForms(
                      onPressed: () {},
                      sizeButton: Size(100.w, 30.h),
                      buttonText: 'Edit Profile',
                      colorButton: const Color.fromARGB(255, 7, 179, 222),
                    ),
                    ElevatedButtonForms(
                      onPressed: () {},
                      sizeButton: Size(100.w, 30.h),
                      buttonText: 'Edit Events',
                      colorButton: const Color.fromARGB(255, 7, 179, 222),
                    ),
                    IconsButtonsCommon(
                      iconModel: const Icon(
                        Icons.control_point_duplicate_outlined,
                        size: 30,
                      ),
                      iconColor: const Color.fromARGB(255, 7, 179, 222),
                      onPressed: () {},
                    )
                  ],
                ),
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
                        onPressed: () {},
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
                )
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
        onPressed: () {},
        child: Text(
          textName,
          style: TextStyle(
              fontWeight: sizeButton, color: colorText, fontSize: fontsize),
        ));
  }
}
