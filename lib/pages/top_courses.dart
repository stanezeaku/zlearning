// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/course_detail.dart';
import 'package:flutter/material.dart';

class TopCourses extends StatefulWidget {
  const TopCourses({Key? key}) : super(key: key);

  static const String page_id = "Top Courses";

  @override
  State<TopCourses> createState() => _TopCoursesState();
}

class _TopCoursesState extends State<TopCourses> {
  List<int> course = [1, 2, 3, 4, 5, 6];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.black),
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
          children: [
            searchbar(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Top Courses in Design',
              style: headText(),
            ),
            const SizedBox(
              height: 20,
            ),
            for (var i in course) allCourses(),
          ],
        ),
      ),
    );
  }

  Widget allCourses() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CourseDetail()));
        },
        child: Row(
          children: [
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/course.jpg'),
                      fit: BoxFit.cover)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      ],
                    ),
                    Text(
                      'Coding With Python Interface',
                      style: headText(),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.person_outline,
                          color: Colors.grey,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Stanley Ezeaku')
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$14.50',
                          style: TextStyle(
                              color: Colors.teal,
                              fontFamily: 'medium',
                              fontSize: 18),
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: appColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            'BEST SELLER',
                            style: TextStyle(fontSize: 12),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
