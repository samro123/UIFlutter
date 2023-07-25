import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayWidget extends StatelessWidget{
  final VideoPlayerController controller;

  VideoPlayWidget({required this.controller});

  @override
  Widget build(BuildContext context) =>
      controller != null && controller.value.isInitialized
          ? Container(alignment: Alignment.topCenter,child: buildVideo(),)
          : Container(
        child: Center(child: CircularProgressIndicator(),),
      );

  Widget buildVideo() => buildPlayVideo();

  Widget buildPlayVideo() => VideoPlayer(controller);

}