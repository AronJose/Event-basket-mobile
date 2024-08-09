import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/blocs/auth/auth_bloc.dart';
// import 'package:login/blocs/role/role_bloc.dart';
import 'package:login/helper/input_text_field.dart';
import 'package:login/presentation/auth_screen/loginscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    //useEffect polathe sathanam ,InitState (stateFullwidgets) kittu
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (timeStamp) {
    //     context.read<RoleBloc>().add(const RoleListGet());
    //   },
    // );
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
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  InputFieldTexts(
                                    controller: firstNameController,
                                    placeholderValue: "Enter your first name",
                                    errorvalue: 'Please enter first text',
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  InputFieldTexts(
                                    controller: lastNameController,
                                    placeholderValue: "Enter your last name",
                                    errorvalue: 'Please enter last text',
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  InputFieldTexts(
                                    controller: emailController,
                                    placeholderValue: "Enter your Email",
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your email';
                                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                          .hasMatch(value)) {
                                        return 'Please enter a valid email';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  InputFieldTexts(
                                    controller: contactController,
                                    placeholderValue: "Enter your Phone Number",
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your phone number';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  InputFieldTexts(
                                    controller: passwordController,
                                    placeholderValue: "Enter your Password",
                                    obscureText: true,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter your password';
                                      } else if (value.length < 6) {
                                        return 'Password must be at least 6 characters long';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.dg),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        minimumSize: WidgetStatePropertyAll(
                                            Size(130.w, 55.h)),
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                          const Color.fromARGB(
                                              255, 107, 166, 214),
                                        ),
                                      ),
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          context
                                              .read<AuthBloc>()
                                              .add(AuthEvent.signUpEvent(
                                                firstName:
                                                    firstNameController.text,
                                                lastName:
                                                    lastNameController.text,
                                                email: emailController.text,
                                                contact: contactController.text,
                                                image: imagePath ?? '',
                                                password:
                                                    passwordController.text,
                                              ));
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Loginscreen(),
                                            ),
                                          );
                                        }
                                      },
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17.spMax,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: 350,
                            //   child: Column(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: [
                            //       const Text("Role : "),
                            //       RoleRadioButton(
                            //         onRoleSelected: (role) {
                            //           selectedRole = role;
                            //         },
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            // const SizedBox(
                            //   height: 20,
                            // ),
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
