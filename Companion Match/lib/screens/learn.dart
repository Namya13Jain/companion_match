import 'package:employfy/utils/commons.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color.fromRGBO(250, 100, 7, 0.8),
        title: const Text(
          "Learn",
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'explore_course');
                },
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        'https://media.istockphoto.com/id/1301201223/photo/a-woman-tailor-works-at-sewing-machine-sews-reuses-fabric-from-old-denim-clothes.jpg?b=1&s=170667a&w=0&k=20&c=twwfci3IXTt3zhKn5MaIP6kmEn7rQWAHzt3OU-8_UD0=',
                        height: 150.0,
                        width: 150.0,
                        fit: BoxFit.cover,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'SEWING \n Duration: 2 months \n Coach: Shivani Das',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'explore_course');
                },
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        'https://images.unsplash.com/photo-1528712306091-ed0763094c98?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29va2luZ3xlbnwwfHwwfHw%3D&w=1000&q=80',
                        height: 150.0,
                        width: 150.0,
                        fit: BoxFit.cover,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'COOKING \n Duration: 1 month \n Coach: Amrita Oberoi',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://leverageedublog.s3.ap-south-1.amazonaws.com/blog/wp-content/uploads/2020/05/05011631/How-to-Learn-Spoken-English_.png',
                      height: 150.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'English Speaking \n Duration: 2 months \n Coach: Ankit Verma',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://naadacademy.in/wp-content/uploads/2020/12/Harmonium-online-750x500-1.jpg',
                      height: 150.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Harmonium Playing \n Duration: 2 months \n Coach: Harleen Kaur',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://arjundixitphotography.files.wordpress.com/2021/10/adp_1011-1.jpg?w=1568',
                      height: 150.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Sitar Playing \n Duration: 3 months \n Coach: Nimrit Singh',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
