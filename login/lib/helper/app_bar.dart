import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/helper/icon_button.dart';
import 'package:login/presentation/screens/event_Screen/event_creation.dart';

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
      backgroundColor: const Color.fromARGB(255, 1, 46, 2),
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
            IconsButtonsCommon(
              iconModel: const Icon(Icons.more_vert),
              iconColor: Colors.white,
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
