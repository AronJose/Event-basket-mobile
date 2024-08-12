import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/helper/check_box.dart';
import 'package:login/helper/elevated_button_form.dart';
import 'package:login/helper/input_text_field.dart';
import 'package:login/helper/multiline_text_field.dart';
import 'package:login/helper/rounded_check_box.dart';
import 'package:login/presentation/screens/event_creation_image_upload.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

enum SingingCharacter { lafayette, jefferson }

class _CreateEventState extends State<CreateEvent> {
  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  final List<String> categoryOptions = ["Basic", "Medium", "Premium"];
  Set<String> selectedCategories = {};
  final List<String> namesOptions = ["Basic", "Medium", "Premium"];
  Set<String> selectedNames = {};

  final _eventKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScreenUtilInit(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              "EventBasket",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
            ),
            backgroundColor: Colors.green,
          ),
          body: Padding(
            padding: EdgeInsets.all(10.dm),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create an Event",
                      style: TextStyle(
                          fontSize: 25.spMin, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Form(
                      key: _eventKey,
                      child: Column(
                        children: [
                          InputFieldTexts(
                            controller: eventNameController,
                            placeholderValue: "Enter the Eevent name",
                            errorvalue: 'Please enter the Event Name ',
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          InputFieldTexts(
                            controller: placeController,
                            placeholderValue: "Enter the Place",
                            errorvalue: 'Please enter the Place ',
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MultiLineInputTextFiled(
                            controller: addressController,
                            placeholderValue: 'Enter the Address',
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MultiLineInputTextFiled(
                            controller: descController,
                            placeholderValue:
                                'Enter the Description about on the Events',
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: namesOptions.map((name) {
                              return RoundedCheckbox(
                                label: name,
                                isSelected: selectedNames.contains(name),
                                onChanged: (bool isSelected) {
                                  setState(() {
                                    if (isSelected) {
                                      selectedNames.add(name);
                                    } else {
                                      selectedNames.remove(name);
                                    }
                                  });
                                },
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          MultiSelectCheckBox(
                            title: 'Category',
                            options: categoryOptions,
                            selectedValues: selectedCategories.toList(),
                            onChanged: (List<String> value) {
                              setState(() {
                                selectedCategories = value.toSet();
                              });
                            },
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButtonForms(
                                formKey: _eventKey,
                                onPressed: () {},
                                buttonText: 'Cancel',
                                sizeButton: Size(70.w, 40.h),
                                colorButton:
                                    const Color.fromARGB(255, 145, 19, 19),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              ElevatedButtonForms(
                                formKey: _eventKey,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EventImages()),
                                  );
                                },
                                buttonText: 'Next',
                                sizeButton: Size(70.w, 40.h),
                                colorButton:
                                    const Color.fromARGB(255, 2, 145, 19),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
