import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/widgets/elevated_button_form.dart';
import 'package:login/common/widgets/input_text_field.dart';
import 'package:login/core/blocs/auth/auth_bloc.dart';
import 'package:login/features/presentation/auth_screen/presentation/screens/signupscreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool passwordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.person_outline_rounded,
                        size: 150,
                        color: Color.fromARGB(255, 31, 103, 33),
                      ),
                      SizedBox(height: 30.h),
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
                      SizedBox(height: 20.h),
                      TextField(
                        controller: passwordController,
                        obscureText: !passwordVisible,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 163, 162, 162),
                            fontSize: 15,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: togglePasswordVisibility,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      ElevatedButtonForms(
                        formKey: _formKey,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<AuthBloc>().add(AuthEvent.signInEvent(
                                email: emailController.text,
                                password: passwordController.text));
                          Navigator.pushNamed(context, '/body');
                          }
                        },
                        buttonText: "Log In",
                        sizeButton: Size(double.infinity, 50.h),
                        colorButton: const Color.fromARGB(255, 0, 105, 202),
                      ),
                      SizedBox(height: 20.h),
                      GestureDetector(
                        onTap: () {
                          // Navigate to Forgot Password Screen
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Signupscreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Not a member? Sign up now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
