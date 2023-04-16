import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  final String videoUrl;

  const VideoPlayer({Key? key, required this.videoUrl}) : super(key: key);

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late final VideoPlayerController _controller;
  late final ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.network(widget.videoUrl);
    _controller.initialize().then((_) {
      setState(() {});
    });

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true,
      looping: true,
      showControls: true,
      aspectRatio: _controller.value.aspectRatio,
      autoInitialize: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_controller.value.isInitialized) {
      return Chewie(
        controller: _chewieController,
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}
