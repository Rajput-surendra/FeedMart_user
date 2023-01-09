import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../Helper/Color.dart';
import 'NotificationLIst.dart';
class VideoPlay extends StatefulWidget {
  const VideoPlay({Key? key}) : super(key: key);

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

@override
class _VideoPlayState extends State<VideoPlay> {
  late VideoPlayerController controller;
  late VideoPlayerController videocontroller;
  late VideoPlayerController annimalcontroller;

  // late VideoPlayerController controller;

  @override
  void initState() {
    controller = VideoPlayerController.network(
        'https://developmentalphawizz.com/feedmart/uploads/videos/products.mp4')
      ..initialize().then((_) {
        controller.pause();
        controller.setVolume(5);
        controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
      });

    videocontroller = VideoPlayerController.network(
        'https://developmentalphawizz.com/feedmart/uploads/videos/what_is_silage.mp4')
      ..initialize().then((_) {
        videocontroller.pause();
        videocontroller.setVolume(5);
        videocontroller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
      });

    annimalcontroller = VideoPlayerController.network(
        ' https://developmentalphawizz.com/feedmart/uploads/videos/how_to_use_corn.mp4')
      ..initialize().then((_) {
        annimalcontroller.pause();
       annimalcontroller.setVolume(5);
        annimalcontroller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized
      });
  }

  void dispose() {
    // TODO: implement dispose
    super.dispose();
    videocontroller.pause();
    controller.pause();
    annimalcontroller.pause();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      height: 70,
                      color: colors.whiteTemp,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                            child: Center(child: Text("Feed Mart TV",style: TextStyle(color: colors.secondary,fontSize: 20),))),
                      )
                  ),
                ),
                Expanded(
                  child: Container(
                      height: 70,
                      color: colors.secondary,
                      child: Align(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width: 3,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationList()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset("assets/images/notifaction.png",height: 30,width: 30),
                              ),
                            ),

                          ],
                        ),
                      )
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Container(
                    height: 210,
                    decoration: BoxDecoration(
                        color: colors.secondary,
                        borderRadius: BorderRadius.circular(20.0)
                    ),

                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            height: 150,
                            child: VideoPlayer(videocontroller),
                          ),
                          Positioned(
                            left: 140,
                            top: 50,
                            child: IconButton(
                                onPressed: () {
                                  if (videocontroller.value.isPlaying) {
                                    videocontroller.pause();
                                  } else {
                                    videocontroller.play();
                                  }

                                  setState(() {});
                                },
                                icon: Icon(
                                  videocontroller.value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  size: 54,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 2,right: 2),
                      //   child: Divider(color: colors.primary,),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "FEEDMART: Product",
                                  style: TextStyle(
                                      color: colors.whiteTemp,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 210,
                    decoration: BoxDecoration(
                        color: colors.secondary,
                        borderRadius: BorderRadius.circular(20.0)
                    ),

                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 150,
                                child: VideoPlayer(annimalcontroller),
                              ),
                              Positioned(
                                left: 140,
                                top: 50,
                                child: IconButton(
                                    onPressed: () {
                                      if (annimalcontroller.value.isPlaying) {
                                        annimalcontroller.pause();
                                      } else {
                                        annimalcontroller.play();
                                      }

                                      setState(() {});
                                    },
                                    icon: Icon(
                                      annimalcontroller.value.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 54,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 2,right: 2),
                          //   child: Divider(color: colors.primary,),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "FEEDMART: Product",
                                    style: TextStyle(
                                        color: colors.whiteTemp,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Container(
                    height: 210,
                    decoration: BoxDecoration(
                        color: colors.secondary,
                        borderRadius: BorderRadius.circular(20.0)
                    ),

                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                height: 150,
                                child: VideoPlayer(controller),
                              ),
                              Positioned(
                                left: 140,
                                top: 50,
                                child: IconButton(
                                    onPressed: () {
                                      if (controller.value.isPlaying) {
                                        controller.pause();
                                      } else {
                                        controller.play();
                                      }

                                      setState(() {});
                                    },
                                    icon: Icon(
                                      controller.value.isPlaying
                                          ? Icons.pause
                                          : Icons.play_arrow,
                                      size: 54,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 2,right: 2),
                          //   child: Divider(color: colors.primary,),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "FEEDMART: Product",
                                    style: TextStyle(
                                        color: colors.whiteTemp,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          )
          




        ],
      ),
    );
  }
}
