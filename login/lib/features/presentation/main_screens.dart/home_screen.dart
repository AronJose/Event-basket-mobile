import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/blocs/event/events_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int imgSelectorIndex = 0;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<EventsBloc>().add(const EventList());
      },
    );
    double screenWidth = ScreenUtil().screenWidth;

    double imageWidth;
    if (screenWidth < 400.w) {
      imageWidth = screenWidth * 1;
    } else if (screenWidth < 600.w) {
      imageWidth = screenWidth * 0.7;
    } else {
      imageWidth = screenWidth * 0.5;
    }

    return BlocBuilder<EventsBloc, EventsState>(
      builder: (context, state) {
        if (state.eventsData == null || state.eventsData.isEmpty) {
          return const Center(child: Text("No Event Data Available!"));
        }

        print(state.eventsData);

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
          child: ListView.builder(
            itemCount: state.eventsData.length,
            itemBuilder: (context, index) {
              // final event = state.eventsData[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      width: imageWidth,
                      height: 200.h,
                      child: Stack(
                        children: [
                          Image.asset(
                            state.eventsData[index].image[imgSelectorIndex],
                            fit: BoxFit.cover,
                            width: imageWidth,
                            height: 200.h,
                          ),
                          Positioned(
                            left: 8.0,
                            top: 90.h,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (imgSelectorIndex > 0) {
                                    imgSelectorIndex--;
                                  }
                                });
                              },
                              icon: const Icon(Icons.arrow_left),
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            right: 8.0,
                            top: 90.h,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (imgSelectorIndex <
                                      state.eventsData[index].image.length -
                                          1) {
                                    imgSelectorIndex++;
                                  }
                                });
                              },
                              icon: const Icon(Icons.arrow_right),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 2,
                              crossAxisSpacing: 2,
                            ),
                            itemCount: state.eventsData[index].image.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              if (index <
                                  state.eventsData[index].image.length) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      imgSelectorIndex = index;
                                    });
                                  },
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.asset(
                                      state.eventsData[index].image[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.w),
                      child: Text(
                        "Aron Jose",
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w900,
                          color: const Color(0xFF3A3A3A),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
