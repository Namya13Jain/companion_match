import 'package:employfy/screens/feed_back.dart';
import 'package:employfy/screens/home.dart';
import 'package:employfy/screens/learn.dart';
import 'package:employfy/utils/commons.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class ThanksFeedback extends StatelessWidget {
  const ThanksFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color.fromRGBO(250, 100, 7, 0.8),
        title: const Text(
          "Explore Course",
          style: appBarText,
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
      //drawer
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
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Icon(
              UniconsLine.check_circle,
              color: Colors.black,
              size: 100,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: const Text(
                "Thanks for your valuable feedback!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 10,
                            primary: const Color.fromRGBO(250, 100, 7, 0.8)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Container(
                            height: 50,
                            width: double.infinity,
                            child: const Center(
                                child: Text(
                              'Continue',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )))))),
          ],
        ),
      ),
    );
  }
}
