import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/widgets/elevated_button_form.dart';
import 'package:login/common/widgets/icon_button.dart';

class EditButtonRow extends StatelessWidget {
  const EditButtonRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
