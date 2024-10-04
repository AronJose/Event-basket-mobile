import 'package:flutter/material.dart';
import 'package:login/common/widgets/input_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignUpForm extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController contactController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  const SignUpForm({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.contactController,
    required this.passwordController,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          InputFieldTexts(
            controller: firstNameController,
            placeholderValue: "Enter your first name",
            errorvalue: 'Please enter first text',
          ),
          SizedBox(height: 20.h),
          InputFieldTexts(
            controller: lastNameController,
            placeholderValue: "Enter your last name",
            errorvalue: 'Please enter last text',
          ),
          SizedBox(height: 20.h),
          InputFieldTexts(
            controller: emailController,
            placeholderValue: "Enter your Email",
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          SizedBox(height: 20.h),
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
          SizedBox(height: 20.h),
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
        ],
      ),
    );
  }
}

