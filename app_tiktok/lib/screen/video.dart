import 'package:app_tiktok/screen/videoplaywidget.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AssetPlayWidget extends StatefulWidget{
  final String ulrVideo;

  AssetPlayWidget({ required this.ulrVideo});

  @override
  State<AssetPlayWidget> createState() => _AssetPlayWidgetState();
}

class _AssetPlayWidgetState extends State<AssetPlayWidget> {
  //final videoAsset = 'assets/video/video1.mp4';
  late VideoPlayerController controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =VideoPlayerController.asset(widget.ulrVideo)
    ..addListener(() => setState(() { }))
    ..setLooping(true)
    ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
     return VideoPlayWidget(controller: controller);
  }
}