// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:artwave/Const/constant_Ui.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  List<VideoPlayerController> videoControllers = [];
  double playbackSpeed = 1.0;
  Map<VideoPlayerController, bool> videoPlayState = {};
  bool isFullScreen = false;

  @override
  void initState() {
    super.initState();

    final videoPaths = List.generate(
      8,
      (index) => 'lib/images/videos/vid${index + 1}.mp4',
    );

    for (final videoPath in videoPaths) {
      final controller = VideoPlayerController.asset(videoPath)
        ..initialize().then((_) {
          setState(() {});
        });

      videoControllers.add(controller);
      videoPlayState[controller] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: myDefaultBackground,
      body: ListView.builder(
        itemCount: videoControllers.length,
        itemBuilder: (context, index) {
          final videoController = videoControllers[index];
          final isPlaying = videoPlayState[videoController] ?? false;

          return Card(
            color: Colors.deepPurple,
            child: Column(
              
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width * (9 / 16),
                  child: Stack(
                    children: [
                      if (videoController.value.isInitialized)
                        AspectRatio(
                          aspectRatio: videoController.value.aspectRatio,
                          child: VideoPlayer(videoController),
                        )
                      else
                        const Center(child: CircularProgressIndicator()),
                      Positioned(
                        top: 0,
                        right: 0,
                        left: 0,
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (isPlaying) {
                                videoController.pause();
                              } else {
                                videoController.play();
                              }
                              videoPlayState[videoController] = !isPlaying;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: isPlaying ? const Icon(Icons.pause,color: Colors.white,) : const Icon(Icons.play_arrow,color: Colors.white),
                      onPressed: () {
                        setState(() {
                          if (isPlaying) {
                            videoController.pause();
                          } else {
                            videoController.play();
                          }
                          videoPlayState[videoController] = !isPlaying;
                        });
                      },
                    ),
                    
                    IconButton(
                      icon: const Icon(Icons.speed,color: Colors.white),
                      onPressed: () {
                        _showSpeedDialog(context, videoController);
                      },
                    ),
                    IconButton(
                      icon: isFullScreen ? const Icon(Icons.fullscreen_exit) : const Icon(Icons.fullscreen,color: Colors.white),
                      onPressed: () {
                        setState(() {
                          isFullScreen = !isFullScreen;
                          if (isFullScreen) {
                            _goFullScreen(context, videoController, isPlaying);
                          } else {
                            Navigator.of(context).pop(); // Exit full-screen mode
                          }
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showSpeedDialog(BuildContext context, VideoPlayerController controller) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: myDefaultBackground,
          title: const Text('Select Playback Speed',style: TextStyle(color: Colors.white),),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: const Text('0.25x',style: TextStyle(color: Colors.white),),
                onTap: () {
                  _setPlaybackSpeed(controller, 0.25);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('0.5x',style: TextStyle(color: Colors.white),),
                onTap: () {
                  _setPlaybackSpeed(controller, 0.5);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Normal',style: TextStyle(color: Colors.white),),
                onTap: () {
                  _setPlaybackSpeed(controller, 1.0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('1.25x',style: TextStyle(color: Colors.white),),
                onTap: () {
                  _setPlaybackSpeed(controller, 1.25);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('1.5x',style: TextStyle(color: Colors.white),),
                onTap: () {
                  _setPlaybackSpeed(controller, 1.5);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _setPlaybackSpeed(VideoPlayerController controller, double speed) {
    setState(() {
      playbackSpeed = speed;
      controller.setPlaybackSpeed(speed);
    });
  }

  void _goFullScreen(BuildContext context, VideoPlayerController videoController, bool isPlaying) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return WillPopScope(
            onWillPop: () async {
              if (isPlaying) {
                videoController.pause();
              }
              setState(() {
                isFullScreen = false;
              });
              return true;
            },
            child: Scaffold(
              backgroundColor: myDefaultBackground,
              body: Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    AspectRatio(
                      aspectRatio: videoController.value.aspectRatio,
                      child: VideoPlayer(videoController),
                    ),
                    IconButton(
                      icon: const Icon(Icons.fullscreen_exit,color: Colors.white,),
                      onPressed: () {
                        if (isPlaying) {
                          videoController.pause();
                        }
                        setState(() {
                          isFullScreen = false;
                        });
                        Navigator.of(context).pop(); // Exit full-screen mode
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    for (final controller in videoControllers) {
      controller.dispose();
    }
  }
}
