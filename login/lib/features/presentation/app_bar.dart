import 'package:flutter/material.dart';
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
      title:  Row(
        children: [
        
         Container(
  width: 50, 
  height: 50,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: Colors.white, 
    boxShadow: const [
      BoxShadow(
        color: Color.fromARGB(66, 253, 255, 255),
        blurRadius: 6,
        offset: Offset(0, 2),
      ),
    ],
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: Image.asset(
      "images/logo.jpg",
      fit: BoxFit.contain, 
    ),
  ),
),

        ],
      ),
      backgroundColor: const Color.fromARGB(255, 7, 179, 222),
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
