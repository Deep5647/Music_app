import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:media_2/provider/video_provider.dart';
import 'package:media_2/view/colour.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';


class VideoPlayScreen extends StatefulWidget {
  const VideoPlayScreen({super.key});

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  VideoProvider? providerR;
  VideoProvider? providerW;

  @override
  void initState() {
    super.initState();
    context.read<VideoProvider>().videoPlayerController =
    VideoPlayerController.asset(
        "${context.read<VideoProvider>().videoList[context.read<VideoProvider>().index].videoPath}")
      ..initialize().then((value) {
        setState(() {});
      });
    context.read<VideoProvider>().chewieController = ChewieController(
        videoPlayerController:
        context.read<VideoProvider>().videoPlayerController!);
  }

  @override
  Widget build(BuildContext context) {
    providerR = context.read<VideoProvider>();
    providerW = context.watch<VideoProvider>();
    return PopScope(
      onPopInvoked: (didPop) async {
        await  context.read<VideoProvider>().chewieController!.pause();
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            iconTheme: IconThemeData(color: white),
            title: Text(
              "Video Play",
              style: TextStyle(fontSize: 22, color: white),
            ),
            backgroundColor: black,
          ),
          body: Center(
            child: SizedBox(
                height: 250,
                child: Chewie(
                  controller: providerR!.chewieController!,
                )),
          ),
          backgroundColor: black,
        ),
      ),
    );
  }
}
