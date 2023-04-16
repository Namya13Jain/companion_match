import 'package:employfy/utils/commons.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color.fromRGBO(250, 100, 7, 0.8),
        title: const Text(
          "Feedback Form",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                UniconsLine.paragraph,
                color: Colors.white,
                size: 24,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          children: [
            const Image(
              image: AssetImage("assets/images/logo_bg.png"),
              height: 150,
            ),
            //home
            ListTile(
                leading: const Icon(
                  UniconsLine.home_alt,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Home',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'home_screen');
                }),

            //companion
            ListTile(
                leading: const Icon(
                  UniconsLine.chat_bubble_user,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Find companion',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'start');
                }),

            //learn
            ListTile(
                leading: const Icon(
                  UniconsLine.book,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Learn',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'learn');
                }),
            //about us
            ListTile(
                leading: const Icon(
                  UniconsLine.question_circle,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'About Us',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'about_us');
                }),
            //feedback form
            ListTile(
                leading: const Icon(
                  UniconsLine.feedback,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Feedback Form',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'feed_back');
                }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Image.asset("assets/images/logo_bg.png"),
              const Text("Please provide your feedback to help us improve",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 19,
                      fontWeight: FontWeight.w600)),
              const TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Tell us your experience",
                      contentPadding: EdgeInsets.only(bottom: 20.0, top: 80.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
