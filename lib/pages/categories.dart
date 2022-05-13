// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  static const String page_id = "Categories";

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
      automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchbar(),
            const SizedBox(
              height: 30,
            ),
            category(Icons.design_services, 'Designing'),
            category(Icons.keyboard, 'Development'),
            category(Icons.insert_chart, 'Business'),
            category(Icons.account_balance, 'Finance & Accounting'),
            category(Icons.computer, 'IT Sector'),
            category(Icons.camera_alt, 'Photography'),
            category(Icons.health_and_safety, 'Health & Fitness'),
            category(Icons.library_music, 'Music'),
          ],
        ),
      ),
    );
  }

  Widget category(icon, text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgcolor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.teal,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                text,
                style: const TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            // color: Colors.black87,
            size: 20,
          )
        ],
      ),
    );
  }
}
