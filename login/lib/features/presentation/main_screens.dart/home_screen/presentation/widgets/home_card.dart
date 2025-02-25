import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/core/blocs/favorite/favorite_bloc.dart';
import 'package:login/core/models/event_modal.dart';
import 'package:login/core/models/favorite_list_model.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/widgets/address_contact_email_screen.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/widgets/image_container_card.dart';
import 'package:login/features/presentation/main_screens.dart/home_screen/presentation/widgets/service_providing_category_screen.dart';
import 'package:login/shared_prefs_helper.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({
    super.key,
    this.eventModal,
    this.favoriteEvent,
  });
  final EventModal? eventModal;
  final FavoriteListModel? favoriteEvent;

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool isfavorite = false;
  int imgSelectorIndex = 0;
  bool isExpanded = false;
  String? userId;

  void textExpand() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadUserId(); // Load userId when the widget initializes
  }

  Future<void> _loadUserId() async {
    final loadedUserId = await SharedPrefsHelper.getUserId();
    setState(() {
      userId = loadedUserId; // Update userId in state
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
    return widget.eventModal != null? Card(
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
                  widget.eventModal!.image[imgSelectorIndex],
                  fit: BoxFit.cover,
                  width: imageWidth,
                  height: 200.h,
                ),
                // ------ Image moving icon left and right -----------
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
                            widget.eventModal!.image.length - 1) {
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
                  itemCount: widget.eventModal!.image.length < 4
                      ? widget.eventModal!.image.length
                      : 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ImageContainerCard(
                      onTap: () {
                        setState(() {
                          imgSelectorIndex = index;
                        });
                      },
                      imagePath: widget.eventModal!.image[index],
                      index: index,
                      count: widget.eventModal!.image.length - 4,
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --------- Event Name ----------------
                Text(
                  widget.eventModal!.eventName,
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF3A3A3A),
                  ),
                ),
                // ----- Event Location ----------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 15,
                            color: Colors.blue,
                          ),
                          Text(
                            widget.eventModal!.place,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 108, 108, 108),
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    // -------- favorite and share icons -------------
                    BlocBuilder<FavoriteBloc, FavoriteState>(
                      builder: (context, state) {
                        return SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                child: Icon(
                                  isfavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color: isfavorite ? Colors.red : Colors.black,
                                ),
                                onTap: () {
                                  setState(() {
                                    isfavorite = !isfavorite;
                                  });
                                  context.read<FavoriteBloc>().add(AddFavorites(
                                      userId: userId,
                                      eventId: widget.eventModal!.id));
                                },
                              ),
                              SizedBox(width: 5.w),
                              const Icon(Icons.share_outlined),
                              SizedBox(width: 10.w)
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                // --------- Description ---------------------------------
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.eventModal!.desc,
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
                        // ----- Services ,Providing and Category Listing ------------
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
                // ------  Bottom icons Home Card -----------
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AdressContactEmailContainerScreen(
                        icons: Icons.home,
                        name: widget.eventModal!.address,
                        title:
                            'Address: ${widget.eventModal!.providers.join(', ')}',
                        widget: widget,
                      ),
                      AdressContactEmailContainerScreen(
                        icons: Icons.call,
                        name: widget.eventModal!.contact,
                        title:
                            'Contact: ${widget.eventModal!.providers.join(', ')}',
                        widget: widget,
                      ),
                      AdressContactEmailContainerScreen(
                        icons: Icons.email,
                        name: widget.eventModal!.email,
                        title:
                            'Email: ${widget.eventModal!.providers.join(', ')}',
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
    ):Card(
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
                 widget.favoriteEvent!.eventId.first.image[imgSelectorIndex],
                  fit: BoxFit.cover,
                  width: imageWidth,
                  height: 200.h,
                ),
                // ------ Image moving icon left and right -----------
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
                            widget.favoriteEvent!.eventId.first.image.length - 1) {
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
                  itemCount: widget.favoriteEvent!.eventId.first.image.length < 4
                      ? widget.favoriteEvent!.eventId.first.image.length
                      : 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ImageContainerCard(
                      onTap: () {
                        setState(() {
                          imgSelectorIndex = index;
                        });
                      },
                      imagePath: widget.favoriteEvent!.eventId.first.image[index],
                      index: index,
                      count: widget.favoriteEvent!.eventId.first.image.length - 4,
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --------- Event Name ----------------
                Text(
                  widget.favoriteEvent!.eventId.first.eventName,
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF3A3A3A),
                  ),
                ),
                // ----- Event Location ----------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 15,
                            color: Colors.blue,
                          ),
                          Text(
                            widget.favoriteEvent!.eventId.first.place,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 108, 108, 108),
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    // -------- favorite and share icons -------------
                    BlocBuilder<FavoriteBloc, FavoriteState>(
                      builder: (context, state) {
                        return SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                child: Icon(
                                  isfavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color: isfavorite ? Colors.red : Colors.black,
                                ),
                                onTap: () {
                                  setState(() {
                                    isfavorite = !isfavorite;
                                  });
                                  context.read<FavoriteBloc>().add(AddFavorites(
                                      userId: userId,
                                      eventId: widget.eventModal!.id));
                                },
                              ),
                              SizedBox(width: 5.w),
                              const Icon(Icons.share_outlined),
                              SizedBox(width: 10.w)
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                // --------- Description ---------------------------------
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.favoriteEvent!.eventId.first.desc,
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
                        // ----- Services ,Providing and Category Listing ------------
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
                // ------  Bottom icons Home Card -----------
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AdressContactEmailContainerScreen(
                        icons: Icons.home,
                        name: widget.favoriteEvent!.eventId.first.address,
                        title:
                            'Address: ${widget.favoriteEvent!.eventId.first.providers.join(', ')}',
                        widget: widget,
                      ),
                      AdressContactEmailContainerScreen(
                        icons: Icons.call,
                        name: widget.favoriteEvent!.eventId.first.contact,
                        title:
                            'Contact: ${widget.favoriteEvent!.eventId.first.providers.join(', ')}',
                        widget: widget,
                      ),
                      AdressContactEmailContainerScreen(
                        icons: Icons.email,
                        name: widget.favoriteEvent!.eventId.first.email,
                        title:
                            'Email: ${widget.favoriteEvent!.eventId.first.providers.join(', ')}',
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

