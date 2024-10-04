import 'package:flutter/material.dart';
import 'package:login/features/presentation/main_screens.dart/videos_screen/presentation/screens/play_screen.dart';

class MultipleVedio extends StatelessWidget {
  const MultipleVedio({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> videos = [
      'assets/videos/vid_1.mp4',
      'assets/videos/vid_2.mp4',
      'assets/videos/vid_3.mp4',
      'assets/videos/vid_2.mp4',
    ];
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return PlayScreen(
          key: ValueKey(videos[index] + index.toString()),
          videopath: videos[index],
        );
      },
      itemCount: videos.length,
    );
  }
}
