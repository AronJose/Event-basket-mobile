import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/core/models/event_modal.dart';
import 'package:login/features/presentation/main_screens.dart/home_widgets/image_container_card.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key, required this.eventModal});
  final EventModal eventModal;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  int imgSelectorIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;

    double imageWidth;
    if (screenWidth < 400.w) {
      imageWidth = screenWidth * 1;
    } else if (screenWidth < 600.w) {
      imageWidth = screenWidth * 0.7;
    } else {
      imageWidth = screenWidth * 0.5;
    }
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
                Image.network(
                  widget.eventModal.image[imgSelectorIndex],
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
                            widget.eventModal.image.length - 1) {
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
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                  ),
                  itemCount: widget.eventModal.image.length < 4
                      ? widget.eventModal.image.length
                      : 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ImageContainerCard(
                      onTap: () {
                        setState(() {
                          imgSelectorIndex = index;
                        });
                      },
                      imagePath: widget.eventModal.image[index],
                      index: index, count: widget.eventModal.image.length - 4,
                    );
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
  }
}

