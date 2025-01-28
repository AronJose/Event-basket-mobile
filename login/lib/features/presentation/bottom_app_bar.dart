import 'package:flutter/material.dart';

ValueNotifier<int> bottomNavNotifier = ValueNotifier(0);

class BottomAppbarCommon extends StatefulWidget {
  const BottomAppbarCommon({
    super.key,
  });

  @override
  State<BottomAppbarCommon> createState() => _BottomAppbarCommonState();
}

class _BottomAppbarCommonState extends State<BottomAppbarCommon> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      bottomNavNotifier.value = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 7, 179, 222),
      selectedItemColor:const Color.fromARGB(118, 213, 233, 245),
      unselectedItemColor: Colors.white,
      selectedLabelStyle:
          const TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
      unselectedLabelStyle:
          const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_outlined),
          label: 'Videos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Profile',
        ),
      ],
    );
  }
}
