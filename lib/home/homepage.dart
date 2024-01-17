import 'package:flutter/material.dart';
import 'package:media_2/home/music.dart';
import 'package:media_2/home/video.dart';
import 'package:media_2/provider/home.dart';
import 'package:media_2/view/colour.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});


  HomeProvider? providerR;

  HomeProvider? providerW;

  @override
  Widget build(BuildContext context) {


    providerW = context.watch<HomeProvider>();
    providerR = context.read<HomeProvider>();
    List<Widget> screen = [
       Music(),
       Video(),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Media Booster",
            style: TextStyle(fontSize: 22, color: white),
          ),
          backgroundColor: green,
        ),
        body: screen[providerW!.index],
        backgroundColor: black,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note_outlined,size: 30,),
              label: 'Music',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined,size: 30,),
              label: 'Video',
            ),
          ],
          currentIndex : providerR!.index,
          selectedItemColor: white,
          onTap: (value) {
            int i = value;
            providerR!.changeIndex(i);
          },
          backgroundColor: green,
        ),
      ),
    );
  }
}
