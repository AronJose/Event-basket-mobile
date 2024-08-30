import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/common/helper/icon_button.dart';
import 'package:video_player/video_player.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({
    super.key,
    required this.videopath,
  });

  final String videopath;

  @override
  State<PlayScreen> createState() => PlayScreenState();
}

class PlayScreenState extends State<PlayScreen> {
  late VideoPlayerController controller;
  ChewieController? chewieController;
  bool hasError = false;
  bool isLiked = false;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(
      widget.videopath,
    )..initialize().then((_) {
        if (mounted) {
          setState(() {
            chewieController = ChewieController(
              videoPlayerController: controller,
              autoPlay: true,
              showControls: false,
              looping: true,
            );
          });
        }
      }).catchError((error) {
        if (mounted) {
          setState(() {
            hasError = true;
          });
        }
      });

    controller.addListener(() {
      if (controller.value.hasError && mounted) {
        setState(() {
          hasError = true;
        });
      }
    });
  }

  @override
  void dispose() {
    chewieController?.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0.w),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white10, width: 2.w),
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(255, 221, 218, 218),
                      blurRadius: 5.r)
                ],
              ),
              child: Card(
                elevation: 2,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).width,
                      child: chewieController != null &&
                              chewieController!
                                  .videoPlayerController.value.isInitialized
                          ? FittedBox(
                              fit: BoxFit.fill,
                              child: SizedBox(
                                height: chewieController!
                                    .videoPlayerController.value.size.height,
                                width: chewieController!
                                    .videoPlayerController.value.size.width,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Chewie(
                                    controller: chewieController!,
                                  ),
                                ),
                              ),
                            )
                          : Center(
                              child: hasError
                                  ? const Text(
                                      'Error loading video',
                                      style: TextStyle(color: Colors.red),
                                    )
                                  : const CircularProgressIndicator(),
                            ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                          color: const Color.fromARGB(255, 78, 235, 112)),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Text(
                      "Aron Jose",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: Color.fromARGB(255, 116, 116, 116),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconsButtonsCommon(
                      iconModel: const Icon(Icons.favorite),
                      iconColor: isLiked ? Colors.red : Colors.green,
                      onPressed: () {
                        setState(
                          () {
                            isLiked = !isLiked;
                          },
                        );
                      },
                    ),
                    IconsButtonsCommon(
                      iconModel: const Icon(Icons.share),
                      iconColor: Colors.green,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
