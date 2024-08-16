import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/common/blocs/auth/auth_bloc.dart';
import 'package:login/common/helper/elevated_button_form.dart';
import 'package:login/features/presentation/auth_screen/loginscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/features/presentation/auth_screen/signup_form.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? imagePath;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.loading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) =>
                  const Center(child: CircularProgressIndicator()),
            );
          } else if (state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error!)),
            );
          }
        },
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.all(15.dg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 20.spMax,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                FilePickerResult? result =
                                    await FilePicker.platform.pickFiles();
                                if (result != null) {
                                  setState(() {
                                    imagePath = result.files.single.path!;
                                  });
                                }
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80.r),
                                child: SizedBox(
                                  width: 100.w,
                                  height: 100.h,
                                  child: imagePath != null
                                      ? Image.file(File(imagePath!))
                                      : Image.asset('images/signUp.png'),
                                ),
                              ),
                            ),
                            SizedBox(height: 40.h),
                            SignUpForm(
                              firstNameController: firstNameController,
                              lastNameController: lastNameController,
                              emailController: emailController,
                              contactController: contactController,
                              passwordController: passwordController,
                              formKey: _formKey,
                            ),
                            SizedBox(height: 30.h),
                            ElevatedButtonForms(
                              formKey: _formKey,
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context
                                      .read<AuthBloc>()
                                      .add(AuthEvent.signUpEvent(
                                        firstName: firstNameController.text,
                                        lastName: lastNameController.text,
                                        email: emailController.text,
                                        contact: contactController.text,
                                        image: imagePath ?? '',
                                        password: passwordController.text,
                                      ));
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Loginscreen(),
                                    ),
                                  );
                                }
                              },
                              buttonText: "Sign Up",
                              sizeButton: Size(130.w, 55.h),
                              colorButton:
                                 const Color.fromARGB(255, 0, 105, 202),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Loginscreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Already have an account? Log in",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    contactController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
