

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:media_2/modal/video_modal.dart';
import 'package:video_player/video_player.dart';

class VideoProvider with ChangeNotifier
{
  int index = 0;
  int sliderIndex =0;
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  List<VideoModel> videoList = [

    VideoModel(imagePath: "sher.jpg",name: "Sher khul gaye",videoPath: "assets/video/music1.mp4"),
    VideoModel(imagePath: "love.jpg",name: "Tere Pyaar mein",videoPath: "assets/video/music4.mp4"),
    VideoModel(imagePath: "tumse.jpg",name: "Tumse milke dil ka",videoPath: "assets/video/music3.mp4"
        ),
    VideoModel(imagePath: "pyaar.jpg",name: "Pyaar Hota kayi",videoPath: "assets/video/music2.mp4"
        ),
    VideoModel(imagePath: "phir milenge.jpg",name: "Phir milenge",videoPath: "assets/video/music5.mp4"),
  ];
  void changIndex(int i) {
    index = i;
    notifyListeners();
  }

  void changeIndexSlider(int i) {
    sliderIndex = i;
    notifyListeners();
  }
}