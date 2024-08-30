import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/blocs/event/events_bloc.dart';
import 'package:login/common/helper/elevated_button_form.dart';

class EventImages extends StatefulWidget {
  // final EventCreationData eventData;
  const EventImages({super.key});

  @override
  State<EventImages> createState() => _EventImagesState();
}

class _EventImagesState extends State<EventImages> {
  List<String?> filepaths = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          title: const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              "EventBasket",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
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
                Expanded(
                  child: BlocConsumer<EventsBloc, EventsState>(
                    listener: (context, state) {
                      if (state.error != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(state.error!)),
                        );
                      }
                    },
                    builder: (context, state) {
                      return GridView.builder(
                        itemCount: filepaths.length + 1,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 20.h,
                        ),
                        itemBuilder: (context, index) {
                          if (index == filepaths.length) {
                            return filepaths.length < 9
                                ? IconButton(
                                    onPressed: () async {
                                      if (filepaths.length < 8) {
                                        FilePickerResult? result =
                                            await FilePicker.platform
                                                .pickFiles(allowMultiple: true);
                                        if (result != null) {
                                          List<String?> newFiles = result.paths;
                                          if (filepaths.length +
                                                  newFiles.length <=
                                              8) {
                                            setState(() {
                                              filepaths.addAll(newFiles);
                                            });
                                          } else {
                                            int remainingSlots =
                                                9 - filepaths.length;
                                            setState(() {
                                              filepaths.addAll(newFiles
                                                  .take(remainingSlots));
                                            });
                                          }
                                        }
                                      } else {
                                        context.read<EventsBloc>().add(
                                              EventsEvent.multipleImgUpload(
                                                  filepaths: filepaths),
                                            );
                                      }
                                    },
                                    icon: Icon(
                                      filepaths.length == 8
                                          ? Icons.check
                                          : Icons.add_a_photo_rounded,
                                      size: 50.r,
                                      color: filepaths.length == 8
                                          ? Colors.green
                                          : Colors.blue,
                                    ),
                                  )
                                : const SizedBox.shrink();
                          } else {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Container(
                                      padding: EdgeInsets.all(5.w),
                                      child: Image.file(
                                        File(filepaths[index]!),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 4.r,
                                    right: 4.r,
                                    child: Container(
                                      width: 20.r,
                                      height: 20.r,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 4.r,
                                          ),
                                        ],
                                      ),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        icon: Icon(
                                          Icons.close_rounded,
                                          color: Colors.grey.shade700,
                                          size: 15.r,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            filepaths.removeAt(index);
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  child: Center(
                    child: ElevatedButtonForms(
                      onPressed: () {
                        context.read<EventsBloc>().add(
                            EventsEvent.multipleImgUpload(
                                filepaths: filepaths));
                        Navigator.pop(context, '/home');
                      },
                      buttonText: "Save",
                      sizeButton: Size(100.w, 50.h),
                      colorButton: const Color.fromARGB(255, 2, 145, 19),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
