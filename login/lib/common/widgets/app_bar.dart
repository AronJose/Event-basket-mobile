import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/widgets/icon_button.dart';
import 'package:login/common/widgets/three_dotes_button_box.dart';
import 'package:login/features/presentation/event_screen/presentation/screens/event_creation.dart';

class MyAppBarCommon extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarCommon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        "EventBasket",
        style: TextStyle(
            fontSize: 25.sp, fontWeight: FontWeight.w900, color: Colors.white),
      ),
      backgroundColor: const Color.fromARGB(255, 54, 54, 54),
      actions: [
        Row(
          children: [
            IconsButtonsCommon(
              iconModel: const Icon(Icons.notification_add_rounded),
              iconColor: Colors.white,
              onPressed: () {},
            ),
            IconsButtonsCommon(
              iconModel: const Icon(
                Icons.add_box_outlined,
              ),
              iconColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateEvent()),
                );
              },
            ),
            // IconsButtonsCommon(
            //   iconModel: const Icon(Icons.more_vert),
            //   iconColor: Colors.white,
            //   onPressed: () {
            //    const MoreButtonCommon();
            //   },
            // ),
            const MoreButtonCommon()
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
