import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/core/models/event_modal.dart';

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

class ImageContainerCard extends StatelessWidget {
  const ImageContainerCard({
    super.key,
    required this.imagePath,
    required this.onTap,
    required this.index,
    required this.count,
  });

  final String imagePath;
  final VoidCallback onTap;
  final int index;
  final int count;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: index == 3 ? null : onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: Image.network(
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.image_not_supported_outlined,
                ),
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          if(index ==3 )   Container(height: double.maxFinite,width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),),
          if(index ==3 )  Align(alignment: Alignment.center,
            child: Text("+ $count",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w900),),)
          ],
        ),
    
      ),
    );
  }
}
