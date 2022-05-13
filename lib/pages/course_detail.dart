// Copyright Stanely Ezeaku © 2022.

import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/about_instructor.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({Key? key}) : super(key: key);

  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  late VideoPlayerController videoPlayerController;
  late Future<void> videoPlayerFuture;
  @override
  void initState() {
    super.initState();
    videoPlayerController =
        VideoPlayerController.asset('assets/images/video.mp4');
    videoPlayerFuture = videoPlayerController.initialize();
    videoPlayerController.setLooping(true);
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: bgcolor,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(
          // color: Colors.black
          ),
      title: SizedBox(
        width: 250,
        child: Text(
          'Hi,Stanley Ezeaku',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          maxLines: 1,
          softWrap: false,
          style: headText(),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchbar(),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coding With Python \n Interface',
                  style: headText(),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: appColor, borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'BEST SELLER',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text('4.5'),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star_outline,
                  size: 20,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '(122 ratings) 25,190 Students',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: const TextSpan(
                text:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry... ',
                style: TextStyle(
                    fontFamily: 'regular', color: Colors.white, height: 1.5),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Read more',
                    style: TextStyle(
                      fontFamily: 'regular',
                      color: appColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: FutureBuilder(
                      future: videoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio:
                                videoPlayerController.value.aspectRatio,
                            child: VideoPlayer(videoPlayerController),
                          );
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        videoPlayerController.value.isPlaying
                            ? videoPlayerController.pause()
                            : videoPlayerController.play();
                      });
                    },
                    child: Icon(
                      videoPlayerController.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'This course includes:',
              style: headText(),
            ),
            const SizedBox(
              height: 20,
            ),
            courseInclude('10.5 hours on demand video'),
            courseInclude('15 Question Patterns'),
            courseInclude('Support Files'),
            courseInclude('Access on all devices'),
            courseInclude('Certificate of completions'),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bgcolor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What will you learn',
                    style: headText(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  courseInclude(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been'),
                  courseInclude(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been'),
                  courseInclude(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry')
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Description',
              style: headText(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been text of the printing and'),
            const SizedBox(
              height: 5,
            ),
            const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  'SEE ALL',
                  style: TextStyle(color: appColor),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: appColor,
                  size: 20,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bgcolor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Curricullum',
                    style: headText(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '179 Lectures / 20h 4min Length',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'Episode 1 - Introduction to 3D Animations & tools'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Episode 2 - Basic of 3D animation theory'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Episode 3 - What are tools use in design'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Episode 4 - The Selection Tools tools'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Episode 5 - Objective of 3D Animations'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Episode 6 - The Conclusion'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Course Info :',
              style: headText(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(
                  Icons.phone_android,
                  color: Colors.teal,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Last uploaded on Jan 21, 2022')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.person,
                  color: Colors.teal,
                  size: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutInstructer()));
                  },
                  child: RichText(
                    text: const TextSpan(
                      text: 'Auther : ',
                      style: TextStyle(
                          fontFamily: 'regular',
                          color: Colors.white,
                          height: 1.5),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' STANLEY EZEAKU',
                          style: TextStyle(
                            fontFamily: 'regular',
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(
                  Icons.language,
                  color: Colors.teal,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('English, French')
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget courseInclude(text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.circle,
            color: appColor,
            size: 10,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(child: Text(text))
        ],
      ),
    );
  }
}
