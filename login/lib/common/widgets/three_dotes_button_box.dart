import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class MoreButtonCommon extends StatefulWidget {
  const MoreButtonCommon({super.key});

  @override
  State<MoreButtonCommon> createState() => MoreButtonCommonState();
}

class MoreButtonCommonState extends State<MoreButtonCommon> {
  SampleItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SampleItem>(
      icon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
          ),
          const Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
      initialValue: selectedItem,
      onSelected: (SampleItem item) {
        setState(() {
          selectedItem = item;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemOne,
          child: Text('My Events'),
        ),
        const PopupMenuItem<SampleItem>(
          value: SampleItem.itemTwo,
          child: Text('Settings'),
        ),
        PopupMenuItem<SampleItem>(
          value: SampleItem.itemThree,
          child: const Text('Log Out'),
          onTap: () async {
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();
            prefs.remove('auth_token');
            Navigator.pushReplacementNamed(context, '/login');
          },
        ),
      ],
    );
  }
}
