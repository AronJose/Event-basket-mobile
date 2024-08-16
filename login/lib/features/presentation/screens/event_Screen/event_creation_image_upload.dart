import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/helper/elevated_button_form.dart';

class EventImages extends StatelessWidget {
  const EventImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text(
            "EventBasket",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 58, 2),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.w),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                  child: Center(
                    child: Text(
                      "You Can Upload Events Images",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  height: 400.h,
                  child: Expanded(
                    child: GridView.count(
                      primary: false,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 10.w,
                      crossAxisCount: 3,
                      padding: EdgeInsets.all(10.r),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.white10, width: 10.w),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
                                  blurRadius: 5.r)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.white10, width: 10.w),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
                                  blurRadius: 5.r)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.white10, width: 10.w),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
                                  blurRadius: 5.r)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.white10, width: 10.w),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
                                  blurRadius: 5.r)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.white10, width: 10.w),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
                                  blurRadius: 5.r)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.white10, width: 10.w),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
                                  blurRadius: 5.r)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.white10, width: 10.w),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
                                  blurRadius: 5.r)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.white10, width: 10.w),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
                                  blurRadius: 5.r)
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.white10, width: 10.w),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 221, 218, 218),
                                  blurRadius: 5.r)
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_a_photo_rounded,
                              size: 50.r,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Center(
                  child: ElevatedButtonForms(
                    onPressed: () {},
                    buttonText: "Save",
                    sizeButton: Size(100.w, 50.h),
                    colorButton: const Color.fromARGB(255, 2, 145, 19),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
