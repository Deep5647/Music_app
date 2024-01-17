import 'package:flutter/material.dart';
import 'package:media_2/home/Splash.dart';
import 'package:media_2/home/homepage.dart';
import 'package:media_2/provider/home.dart';
import 'package:media_2/provider/music_provider.dart';
import 'package:media_2/provider/video_provider.dart';
import 'package:media_2/view/music_view.dart';
import 'package:media_2/view/video_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeProvider(),),
      ChangeNotifierProvider(create: (context) => MusicProvider(),),
      ChangeNotifierProvider(create: (context) => VideoProvider(),),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: 'spl',
      routes:{
        '/' : (context) =>  Homepage(),
        'spl' : (context) => const spl(),

        'musicPlay' : (context) => const MusicPlayScreen(),
        'videoPlay' : (context) => const VideoPlayScreen(),

      }
    ),
  ));
}
