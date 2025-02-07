import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/core/blocs/event/events_bloc.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/widgets/home_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<EventsBloc>().add(const EventList());
      },
    );

    return BlocBuilder<EventsBloc, EventsState>(
      builder: (context, state) {
        if (state.eventsData.isEmpty) {
          return const Center(child: Text("No Event Data Available!"));
        }
     
        if(state.loading) return const Center(child: CircularProgressIndicator());
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.w),
          child: ListView.builder(
            itemCount: state.eventsData.length,
            itemBuilder: (context, listIndex) {
              // final event = state.eventsData[index];
              return HomeCard(
                eventModal: state.eventsData[listIndex],
              );
            },
          ),
        );
      },
    );
  }
}
