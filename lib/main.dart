import 'package:flutter/material.dart';
import 'package:music_app_dart/pages/HomePage.dart';
import 'package:music_app_dart/pages/MusicPage.dart';
import 'package:music_app_dart/pages/PlayListPage.dart';
import 'package:music_app_dart/widgets/PlayList.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" :(context) => HomePage(),
        "playlistPage" :(context) => PlayListPage(),
        "musicPage" :(context) => MusicPage(),
      },
    );
  }
}

