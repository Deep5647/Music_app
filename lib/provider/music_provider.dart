import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_2/modal/music_modal.dart';

class MusicProvider with ChangeNotifier {
  AssetsAudioPlayer player = AssetsAudioPlayer();
  bool isPlay = false;
  Duration totalDuration = const Duration(seconds: 0);
  int index = 0;
  int sliderIndex = 0;

  List<MusicModel> musicList = [
    MusicModel(
        name: "Sher Khul Gaye", imagePath: "sher.jpg", musicName: "assets/music/music1.m4a"),
    MusicModel(
        name: "Tere Pyaar mein", imagePath: "love.jpg", musicName: "assets/music/music44.m4a"),
    MusicModel(
        name: "Tumse milke dil ka", imagePath: "tumse.jpg", musicName: "assets/music/music33.m4a"),
    MusicModel(
        name: "Pyaar hota kayi",
        imagePath: "pyaar.jpg",
        musicName: "assets/music/music22.m4a"),
    MusicModel(
        name: "Phir milenge", imagePath: "phir milenge.jpg", musicName: "assets/music/music55.m4a"),
  ];

  void changIndex(int i) {
    index = i;
    notifyListeners();
  }

  void changTotalDuration(Duration d1) {
    totalDuration = d1;
    notifyListeners();
  }

  void changeStatus(bool status) {
    isPlay = status;
    notifyListeners();
  }

  void changeIndexSlider(int i) {
    sliderIndex = i;
    notifyListeners();
  }
}
