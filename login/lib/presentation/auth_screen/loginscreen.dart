import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/presentation/auth_screen/signupscreen.dart';
import 'package:login/presentation/screens/home_screen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool passwordVisible = false;

  void passwordVisibleButton() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.r),
                  child: SizedBox(
                      width: 150.w,
                      height: 150.h,
                      child: Image.asset('images/signUp.png')),
                ),
                SizedBox(height: 40.h),
                Container(
                  margin: EdgeInsets.only(bottom: 20.h),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 163, 162, 162),
                        fontSize: 20.spMin,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 108, 186, 250),
                            width: 2.w),
                      ),
                    ),
                  ),
                ),
                TextField(
                  obscureText: !passwordVisible,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 163, 162, 162),
                          fontSize: 20.spMin),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide(
                              color: const Color.fromARGB(255, 106, 180, 240),
                              width: 2.w)),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: passwordVisibleButton,
                      )),
                ),
                SizedBox(
                  height: 50.h,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(110.w, 55.h)),
                    backgroundColor: WidgetStateProperty.all(
                        const Color.fromARGB(255, 134, 194, 243)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>const HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.spMax,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30.h),
                Text(
                  "Forgot  Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 15.spMin),
                ),
                SizedBox(height: 10.h),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signupscreen()));
                    },
                    child: Text("Not a member? Sign up now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 15.spMin)))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
