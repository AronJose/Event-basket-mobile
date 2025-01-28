import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/blocs/event/events_bloc.dart';
import 'package:login/common/widgets/check_box.dart';
import 'package:login/common/widgets/elevated_button_form.dart';
import 'package:login/common/widgets/input_text_field.dart';
import 'package:login/common/widgets/multiline_text_field.dart';
import 'package:login/features/presentation/event_screen/presentation/screens/event_creation_image_upload.dart';
import 'package:login/features/presentation/event_screen/presentation/widgets/event_data.dart';

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
  final TextEditingController emailController =TextEditingController();
  final TextEditingController contactController = TextEditingController();

  final List<String> providerOptions = [];
  Set<String> selectedProvider = {};
  final List<String> providingsOptions = [];
  Set<String> selectedProvidings = {};
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
      context.read<EventsBloc>().add(const ProviderList());
      context.read<EventsBloc>().add(const ProvidingList());
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
        if (state.categoryData !=null && state.categoryData.isNotEmpty) {
          categoryOptions.clear();
          categoryOptions.addAll(
            state.categoryData.map((e) => e.categoryName),
          );
        }

        if (state.servicesData !=null &&state.servicesData.isNotEmpty) {
          namesOptions.clear();
          namesOptions.addAll(
            state.servicesData.map((e) => e.services),
          );
        }

        if (state.providerData !=null &&state.providerData.isNotEmpty) {
          providerOptions.clear();
          providerOptions.addAll(
            state.providerData.map((e) => e.providers),
          );
        }

        if (state.providingData !=null &&state.providingData.isNotEmpty) {
          providingsOptions.clear();
          providingsOptions.addAll(
            state.providingData.map((e) => e.providing),
          );
        }

        return SafeArea(
          child: ScreenUtilInit(
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
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900),
                ),
                backgroundColor: const Color.fromARGB(255, 54, 54, 54),
              ),
              body: Padding(
                padding: const EdgeInsets.all(20),
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
                              MultiSelectCheckBox(
                                title: 'providers',
                                options: providerOptions,
                                selectedValues: selectedProvider.toList(),
                                onChanged: (List<String> value) {
                                  setState(() {
                                    selectedProvider = value.toSet();
                                  });
                                },
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
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
                               InputFieldTexts(
                                controller: emailController,
                                placeholderValue: "Enter the email",
                                errorvalue: 'Please enter a Valid Email ',
                              ),
                               SizedBox(
                                height: 10.h,
                              ),
                               InputFieldTexts(
                                controller: contactController,
                                placeholderValue: "Enter the contact number",
                                errorvalue: 'Please enter a Valid Contact Number ',
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
                              MultiSelectCheckBox(
                                title: 'Categories',
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
                              MultiSelectCheckBox(
                                title: 'Providing',
                                options: providingsOptions,
                                selectedValues: selectedProvidings.toList(),
                                onChanged: (List<String> value) {
                                  setState(() {
                                    selectedProvidings = value.toSet();
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
                                        EventCreationData eventData =
                                            EventCreationData(
                                                Event_name:
                                                    eventNameController.text,
                                                place: placeController.text,
                                                desc: descController.text,
                                                address: addressController.text,
                                                email:emailController.text,
                                                contact:contactController.text,
                                                services:
                                                    selectedNames.toList(),
                                                category:
                                                    selectedCategories.toList(),
                                                providers:
                                                    selectedProvider.toList(),
                                                providing: selectedProvidings
                                                    .toList());
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => EventImages(
                                                eventData: eventData),
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
          ),
        );
      },
    );
  }
}
