import 'dart:convert';

import 'package:eshop_multivendor/Helper/Constant.dart';
import 'package:eshop_multivendor/Model/GetVideoModel.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../Helper/Color.dart';
import 'NotificationLIst.dart';
import 'package:http/http.dart'as http;
class VideoPlay extends StatefulWidget {
  const VideoPlay({Key? key}) : super(key: key);

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

@override
class _VideoPlayState extends State<VideoPlay> {
  bool isStoped = false;
  VideoPlayerController? _videoController;
  List bannerVideo = [];
  // late VideoPlayerController controller;
  // late VideoPlayerController videocontroller;
  // late VideoPlayerController annimalcontroller;

  // late VideoPlayerController controller;

  @override
  void initState() {
    getVideo();
    // controller = VideoPlayerController.network(
    //     'https://developmentalphawizz.com/feedmart/uploads/media/2022/WhatsApp_Video_2022-09-16_at_3_49_19_PM_(1).mp4')
    //   ..initialize().then((_) {
    //     controller.pause();
    //     controller.setVolume(5);
    //     controller.setLooping(true);
    //     // Ensure the first frame is shown after the video is initialized
    //   });
    //
    // videocontroller = VideoPlayerController.network(
    //     'https://developmentalphawizz.com/feedmart/uploads/videos/what_is_silage.mp4')
    //   ..initialize().then((_) {
    //     videocontroller.pause();
    //     videocontroller.setVolume(5);
    //     videocontroller.setLooping(true);
    //     // Ensure the first frame is shown after the video is initialized
    //   });
    //
    // annimalcontroller = VideoPlayerController.network(
    //     ' https://developmentalphawizz.com/feedmart/uploads/videos/how_to_use_corn.mp4')
    //   ..initialize().then((_) {
    //     annimalcontroller.pause();
    //    annimalcontroller.setVolume(5);
    //     annimalcontroller.setLooping(true);
    //     // Ensure the first frame is shown after the video is initialized
    //   });
  }

  // showVideo(String url) {
  //   _videoController = VideoPlayerController.network(
  //     //  widget.video
  //       video
  //     //url
  //     // bannerVideo != null?
  //     //  "https://alphawizztest.tk/plumbing_bazzar/${bannerVideo[0]['video']}"
  //     //     : ""
  //     //   :
  //     // 'https://alphawizztest.tk/plumbing_bazzar/uploads/HW-Hues-rendered-TVC-30sec.mp4'
  //   )
  //     ..initialize().then((_) {
  //       _videoController!.play();
  //       // _videoController!.pause();
  //       _videoController!.setLooping(true);
  //       // Ensure the first frame is shown after the video is initialized
  //     });
  // }

  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   videocontroller.pause();
  //   controller.pause();
  //   annimalcontroller.pause();
  // }
  GetVideoModel?  getModel;
  getVideo() async {
    var headers = {
      'Cookie': 'ci_session=1d251b8a96c0de2bfca75ce62fa18a44634a5fca'
    };
    var request = http.Request('GET', Uri.parse('$baseUrl/get_video'));

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    // if (!error) {
    //   var data = getdata["data"];
    //   bannerVideo = data;
    //   video =
    //   "$imageUrl${bannerVideo[0]['video']}";
    //   _videoController = VideoPlayerController.network('$video')
    //     ..initialize().then((_) {
    //       setState(() {
    //         //   if (_controller.value.isPlaying) {
    //         //     _controller.pause();
    //         //   } else {
    //         //     // If the video is paused, play it.
    //         //     _controller.play();
    //         //   }
    //         // });
    //         // scroll_visibility == false ? _videoController!.pause() :
    //         _videoController!.play();
    //         _videoController!.setVolume(0);
    //         _videoController!.setLooping(true);
    //       });
    //     });
    //   //video = "https://alphawizztest.tk/plumbing_bazzar/${bannerVideo[0]['video']}";
    //   print("this is my video ^^ ${bannerVideo[0]['video']}");
    //   // catList =
    //   //     (data as List).map((data) => new Product.fromCat(data)).toList();
    //   //
    //   // if (getdata.containsKey("popular_categories")) {
    //   //   var data = getdata["popular_categories"];
    //   //   popularList =
    //   //       (data as List).map((data) => new Product.fromCat(data)).toList();
    //   //
    //   //   if (popularList.length > 0) {
    //   //     Product pop =
    //   //     new Product.popular("Popular", imagePath + "popular.svg");
    //   //     catList.insert(0, pop);
    //   //     context.read<CategoryProvider>().setSubList(popularList);
    //   //   }
    //   //}
    // } else {
    //   // setSnackbar("", context);
    //
    // }

    // if (response.statusCode == 200) {
    //   var finalRes = await response.stream.bytesToString();
    //   final jsonResponse = GetVideoModel.fromJson(json.decode(finalRes));
    //   setState(() {
    //     getModel = jsonResponse;
    //   });
    // }
    // else {
    // print(response.reasonPhrase);
    // }

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
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: ListView(
          //       children: [
          //         Container(
          //           height: 210,
          //           decoration: BoxDecoration(
          //               color: colors.secondary,
          //               borderRadius: BorderRadius.circular(20.0)
          //           ),
          //
          //           child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Stack(
          //                   children: [
          //                     Container(
          //                       decoration: BoxDecoration(
          //                           borderRadius: BorderRadius.circular(20)
          //                       ),
          //                       height: 150,
          //                       child: VideoPlayer(videocontroller),
          //                     ),
          //                     Positioned(
          //                       left: 140,
          //                       top: 50,
          //                       child: IconButton(
          //                           onPressed: () {
          //                             if (videocontroller.value.isPlaying) {
          //                               videocontroller.pause();
          //                             } else {
          //                               videocontroller.play();
          //                             }
          //
          //                             setState(() {});
          //                           },
          //                           icon: Icon(
          //                             videocontroller.value.isPlaying
          //                                 ? Icons.pause
          //                                 : Icons.play_arrow,
          //                             size: 54,
          //                             color: Colors.white,
          //                           )),
          //                     )
          //                   ],
          //                 ),
          //                 // Padding(
          //                 //   padding: const EdgeInsets.only(left: 2,right: 2),
          //                 //   child: Divider(color: colors.primary,),
          //                 // ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: Row(
          //                     children: [
          //                       Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Center(
          //                           child: Text(
          //                             "FEEDMART: Product",
          //                             style: TextStyle(
          //                                 color: colors.whiteTemp,
          //                                 fontSize: 15,
          //                                 fontWeight: FontWeight.bold),
          //                           ),
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ]),
          //         ),
          //         SizedBox(
          //           height: 15,
          //         ),
          //         Container(
          //           height: 210,
          //           decoration: BoxDecoration(
          //               color: colors.secondary,
          //               borderRadius: BorderRadius.circular(20.0)
          //           ),
          //
          //           child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Stack(
          //                   children: [
          //                     Container(
          //                       decoration: BoxDecoration(
          //                           borderRadius: BorderRadius.circular(20)
          //                       ),
          //                       height: 150,
          //                       child: VideoPlayer(annimalcontroller),
          //                     ),
          //                     Positioned(
          //                       left: 140,
          //                       top: 50,
          //                       child: IconButton(
          //                           onPressed: () {
          //                             if (annimalcontroller.value.isPlaying) {
          //                               annimalcontroller.pause();
          //                             } else {
          //                               annimalcontroller.play();
          //                             }
          //
          //                             setState(() {});
          //                           },
          //                           icon: Icon(
          //                             annimalcontroller.value.isPlaying
          //                                 ? Icons.pause
          //                                 : Icons.play_arrow,
          //                             size: 54,
          //                             color: Colors.white,
          //                           )),
          //                     )
          //                   ],
          //                 ),
          //                 // Padding(
          //                 //   padding: const EdgeInsets.only(left: 2,right: 2),
          //                 //   child: Divider(color: colors.primary,),
          //                 // ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: Row(
          //                     children: [
          //                       Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Text(
          //                           "FEEDMART: Product",
          //                           style: TextStyle(
          //                               color: colors.whiteTemp,
          //                               fontSize: 15,
          //                               fontWeight: FontWeight.bold),
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ]),
          //         ),
          //
          //         SizedBox(
          //           height: 15,
          //         ),
          //
          //         Container(
          //           height: 210,
          //           decoration: BoxDecoration(
          //               color: colors.secondary,
          //               borderRadius: BorderRadius.circular(20.0)
          //           ),
          //
          //           child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Stack(
          //                   children: [
          //                     Container(
          //                       decoration: BoxDecoration(
          //                           borderRadius: BorderRadius.circular(20)
          //                       ),
          //                       height: 150,
          //                       child: VideoPlayer(controller),
          //                     ),
          //                     Positioned(
          //                       left: 140,
          //                       top: 50,
          //                       child: IconButton(
          //                           onPressed: () {
          //                             if (controller.value.isPlaying) {
          //                               controller.pause();
          //                             } else {
          //                               controller.play();
          //                             }
          //
          //                             setState(() {});
          //                           },
          //                           icon: Icon(
          //                             controller.value.isPlaying
          //                                 ? Icons.pause
          //                                 : Icons.play_arrow,
          //                             size: 54,
          //                             color: Colors.white,
          //                           )),
          //                     )
          //                   ],
          //                 ),
          //                 // Padding(
          //                 //   padding: const EdgeInsets.only(left: 2,right: 2),
          //                 //   child: Divider(color: colors.primary,),
          //                 // ),
          //                 Padding(
          //                   padding: const EdgeInsets.all(8.0),
          //                   child: Row(
          //                     children: [
          //                       Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Text(
          //                           "FEEDMART: Product",
          //                           style: TextStyle(
          //                               color: colors.whiteTemp,
          //                               fontSize: 15,
          //                               fontWeight: FontWeight.bold),
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ]),
          //         ),
          //         SizedBox(
          //           height: 15,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Container(
            height: 250,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: ScrollPhysics(),
              itemCount: getModel!.data!.length,
              itemBuilder: (context, i) {
                return Text("data");
                //   Column(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.all(8.0),
                //       child: ListView(
                //         children: [
                //           Container(
                //             height: 210,
                //             decoration: BoxDecoration(
                //                 color: colors.secondary,
                //                 borderRadius: BorderRadius.circular(20.0)
                //             ),
                //
                //             child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Stack(
                //                     children: [
                //                       Container(
                //                         decoration: BoxDecoration(
                //                             borderRadius: BorderRadius.circular(20)
                //                         ),
                //                         height: 150,
                //                         child: VideoPlayer(videocontroller),
                //                       ),
                //                       Positioned(
                //                         left: 140,
                //                         top: 50,
                //                         child: IconButton(
                //                             onPressed: () {
                //                               if (videocontroller.value.isPlaying) {
                //                                 videocontroller.pause();
                //                               } else {
                //                                 videocontroller.play();
                //                               }
                //                               setState(() {});
                //                             },
                //                             icon: Icon(
                //                               videocontroller.value.isPlaying
                //                                   ? Icons.pause
                //                                   : Icons.play_arrow,
                //                               size: 54,
                //                               color: Colors.white,
                //                             )),
                //                       )
                //                     ],
                //                   ),
                //                   // Padding(
                //                   //   padding: const EdgeInsets.only(left: 2,right: 2),
                //                   //   child: Divider(color: colors.primary,),
                //                   // ),
                //                   Padding(
                //                     padding: const EdgeInsets.all(8.0),
                //                     child: Row(
                //                       children: [
                //                         Padding(
                //                           padding: const EdgeInsets.all(8.0),
                //                           child: Center(
                //                             child: Text(
                //                               "FEEDMART: Product",
                //                               style: TextStyle(
                //                                   color: colors.whiteTemp,
                //                                   fontSize: 15,
                //                                   fontWeight: FontWeight.bold),
                //                             ),
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ]),
                //           ),
                //           SizedBox(
                //             height: 15,
                //           ),
                //
                //         ],
                //       ),
                //     )
                //
                //   ],
                // );
              },
            ),
          )
        ],
      )
    );
  }
  Widget _video() {
    return InkWell(
      onTap: (){
        setState(() {
          isStoped = true;
        });
      },
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: bannerVideo.isNotEmpty
              ?
          //widget.video.isNotEmpty ?
          VideoPlayer(_videoController!)
              : Center(
            child: CircularProgressIndicator(
              color: colors.primary,
            ),
          )

        //     : VideoPlayer(
        //     _viController
        // )
      ),
    );
  }
}
