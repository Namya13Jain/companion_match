import 'package:employfy/utils/commons.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color.fromRGBO(250, 100, 7, 0.8),
        title: const Text(
          "About Us",
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
        child: Column(
          children: const [
            Image(
              image: AssetImage("assets/images/logo_no_bg.png"),
              height: 300,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 5),
              child: Text(
                "Intro",
                style: bodyText,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 7, top: 2),
              child: Text(
                "Our Services",
                style: headingText,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 5),
              child: Text(
                "Aging Together offers a wide range of services, including the ability to find a companion who can provide social interaction and emotional support. Whether you're looking for someone to chat with or someone to accompany you on walks, our app makes it easy to find the perfect match.",
                style: bodyText,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 7, top: 7),
              child: Text(
                "Our app also provides access to caretakers on a rental basis, who can step in and provide the kind of care and attention that family members would normally offer. Whether it's help with day-to-day activities like grocery shopping or assistance with medical appointments, Aging Together is there to provide support.",
                style: bodyText,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 7, top: 7),
              child: Text(
                "Aging Together also offers a unique mentorship program, connecting seniors with college students who can provide guidance and support as they learn new skills. College students can earn certificates of social internships, which will help them stand out when applying for jobs.",
                style: bodyText,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 7, top: 7),
              child: Text(
                  "Our app also gives medication reminders that allows immediate family members to record and schedule personalized voice messages. It sends a notification back to the family members when the medicine has been taken.",
                  style: bodyText),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 7, top: 7),
              child: Text(
                "We also offer the option for the immediate family members to track the location of their loved ones suffering from Alzeimers disease and dementia, through just their phones.",
                style: bodyText,
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
