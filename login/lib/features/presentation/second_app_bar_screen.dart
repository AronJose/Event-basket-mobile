import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/blocs/event/events_bloc.dart';

class SecondAppBarScreen extends StatelessWidget {
  const SecondAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<EventsBloc>().add(const GetAllApiCommon());
      },
    );
    return BlocBuilder<EventsBloc, EventsState>(
      builder: (context, state) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SearchInputBox(),
              
            ],
          ),
        );
      },
    );
  }

  Widget _buildIconButton(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}

class SearchInputBox extends StatelessWidget {
  const SearchInputBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 4.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18.sp,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
