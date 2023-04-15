import 'package:employfy/utils/commons.dart';
import 'package:flutter/material.dart';
import 'info1.dart';
import 'package:unicons/unicons.dart';

class Start extends StatelessWidget {
  static const String id = 'Find Companion';
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          backgroundColor: const Color.fromRGBO(250, 100, 7, 0.8),
          title: const Text(
            "Find Companion",
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
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            children: [
              Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/age.jpg')),
              const SizedBox(height: 20),
              const Text(
                "Feeling lonely? \nFind companion",
                style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Chat Mingle is a platform which helps senior citizens to find friends with whom they can chat, meet and discuss whatever they want to. It will make them feel that someone is there to spend time with them.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Center(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        primary: const Color.fromRGBO(250, 100, 7, 0.8)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => info1()));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: const Center(
                        child: Text(
                          'Start',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ))),
            ],
          ),
        ));
  }
}
