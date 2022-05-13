// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  static const String page_id = "Account";

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
          children: [
            searchbar(),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bgcolor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/profile.jpeg'),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stanley Ezeaku',
                    style: headText(),
                  ),
                  const Text(
                    '(+971) 565 548 121',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  bottomFields(
                      Icons.insert_drive_file_outlined, 'Payment History'),
                  bottomFields(Icons.notifications_outlined, 'Notifications'),
                  bottomFields(Icons.help_outline, 'Help & Support'),
                  bottomFields(Icons.settings_outlined, 'Settings'),
                  bottomFields(Icons.logout_outlined, 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomFields(icon, text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.teal,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
