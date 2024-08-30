import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/blocs/event/events_bloc.dart';
import 'package:login/common/helper/check_box.dart';
import 'package:login/common/helper/elevated_button_form.dart';
import 'package:login/common/helper/input_text_field.dart';
import 'package:login/common/helper/multiline_text_field.dart';
import 'package:login/common/helper/rounded_check_box.dart';
import 'package:login/features/presentation/screens/event_Screen/event_creation_image_upload.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController descController = TextEditingController();

  final List<String> categoryOptions = [];
  Set<String> selectedCategories = {};
  final List<String> namesOptions = [];
  Set<String> selectedNames = {};

  final _eventKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EventsBloc>().add(const CategoryList());
      context.read<EventsBloc>().add(const ServicesList());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EventsBloc, EventsState>(
      listener: (context, state) {
        if (state.error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error!)),
          );
        }
      },
      builder: (context, state) {
        if (state.categoryData.isNotEmpty) {
          categoryOptions.clear();
          categoryOptions.addAll(
            state.categoryData.map((e) => e.categoryName),
          );
        }

        if (state.servicesData.isNotEmpty) {
          namesOptions.clear();
          namesOptions.addAll(
            state.servicesData.map((e) => e.services),
          );
        }
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
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
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
              ),
              backgroundColor: const Color.fromARGB(255, 0, 56, 2),
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
                              placeholderValue: "Enter the Event name",
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
                              errorvalue: 'please enter the Address',
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            MultiLineInputTextFiled(
                              controller: descController,
                              placeholderValue:
                                  'Enter the Description about the Event',
                              errorvalue: 'please enter the description',
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: categoryOptions.map((name) {
                                return RoundedCheckbox(
                                  label: name,
                                  isSelected: selectedCategories.contains(name),
                                  onChanged: (bool isSelected) {
                                    setState(() {
                                      if (isSelected) {
                                        selectedCategories.add(name);
                                      } else {
                                        selectedCategories.remove(name);
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
                              title: 'Services',
                              options: namesOptions,
                              selectedValues: selectedNames.toList(),
                              onChanged: (List<String> value) {
                                setState(() {
                                  selectedNames = value.toSet();
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
                                  onPressed: () {
                                    Navigator.pop(context, '/home');
                                  },
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
                                    if (_eventKey.currentState!.validate()) {
                                      context.read<EventsBloc>().add(
                                            EventsEvent.createEventsEvent(
                                              Event_name:
                                                  eventNameController.text,
                                              place: placeController.text,
                                              desc: descController.text,
                                              address: addressController.text,
                                              services: selectedNames.toList(),
                                              category:
                                                  selectedCategories.toList(),
                                            ),
                                          );
                                      // EventCreationData eventData =
                                      //     EventCreationData(
                                      //   Event_name: eventNameController.text,
                                      //   place: placeController.text,
                                      //   desc: descController.text,
                                      //   address: addressController.text,
                                      //   services: selectedNames.toList(),
                                      //   category: selectedCategories.toList(),
                                      // );
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const EventImages(),
                                        ),
                                      );
                                    }
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
        );
      },
    );
  }
}

// class EventCreationData {
//   final String Event_name;
//   final String place;
//   final String address;
//   final String desc;
//   final List<String> services;
//   final List<String> category;

//   EventCreationData({
//     required this.Event_name,
//     required this.place,
//     required this.address,
//     required this.desc,
//     required this.services,
//     required this.category,
//   });
// }
