import 'package:first_app/widgets/bottom_navigation.dart';
import 'package:first_app/widgets/category_selector.dart';
import 'package:first_app/widgets/recent_emails.dart';
import 'package:flutter/material.dart';
import 'package:first_app/models/message_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final name = "Moses Borore";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {}),
        title: Text(
          'Gmail clone',
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        elevation: 12.0,
        actions: <Widget>[
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage(currentUser.imageUrl),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'INBOX',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.blueGrey,
                          letterSpacing: 3.0,
                        ),
                      ),
                    ),
                  ],
                ),
                RecentEmails()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating action button is pressed");
        },
        tooltip: "compose",
        child: Icon(
          Icons.chat,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
