import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/core/models/event_modal.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/widgets/address_contact_email_screen.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/widgets/image_container_card.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/widgets/service_providing_category_screen.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key, required this.eventModal});
  final EventModal eventModal;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  int imgSelectorIndex = 0;
  bool isExpanded = false;
  void textExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

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
                      index: index,
                      count: widget.eventModal.image.length - 4,
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.eventModal.eventName,
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF3A3A3A),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 15,
                      color: Colors.blue,
                    ),
                    Text(
                      widget.eventModal.place,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 108, 108, 108),
                        fontWeight: FontWeight.w500,
                        fontSize: 10
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.eventModal.desc,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 108, 108, 108),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          textExpand();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ServiceProvidingCategoryScreen(
                            widget: widget,
                            isExpanded: isExpanded,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AdressContactEmailContainerScreen(
                        icons: Icons.home,
                        name: widget.eventModal.address,
                        title:
                            'Address: ${widget.eventModal.providers.join(', ')}',
                        widget: widget,
                      ),
                      AdressContactEmailContainerScreen(
                        icons: Icons.call,
                        name: widget.eventModal.contact,
                        title:
                            'Contact: ${widget.eventModal.providers.join(', ')}',
                        widget: widget,
                      ),
                      AdressContactEmailContainerScreen(
                        icons: Icons.email,
                        name: widget.eventModal.email,
                        title:
                            'Email: ${widget.eventModal.providers.join(', ')}',
                        widget: widget,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
