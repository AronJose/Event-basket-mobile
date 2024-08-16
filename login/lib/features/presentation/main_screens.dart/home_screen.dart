import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;

    double imageWidth;
    if (screenWidth < 400.w) {
      imageWidth = screenWidth * 0.9;
    } else if (screenWidth < 600.w) {
      imageWidth = screenWidth * 0.7;
    } else {
      imageWidth = screenWidth * 0.5;
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: imageWidth,
              height: 200.h,
              child: Image.asset(
                'images/wedding1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.w),
              child: Text(
                "Aron Jose",
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w900,
                  color: const Color(0xFF3A3A3A),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
