import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondAppBarScreen extends StatelessWidget {
  const SecondAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildSearchBox(),
          _buildIconButton(Icons.filter_alt_rounded, Colors.black),
          _buildIconButton(Icons.location_on,  Colors.black),
        ],
      ),
    );
  }

  Widget _buildSearchBox() {
    return Container(
      width: 200.w,
      height: 50,
      decoration: _boxDecoration(),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18.sp,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: _boxDecoration(),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          blurRadius: 4.0,
          offset: const Offset(0, 2),
        ),
      ],
    );
  }
}
