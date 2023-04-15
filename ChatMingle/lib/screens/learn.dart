import 'package:employfy/utils/commons.dart';
import 'package:flutter/material.dart';

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
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://media.istockphoto.com/id/1301201223/photo/a-woman-tailor-works-at-sewing-machine-sews-reuses-fabric-from-old-denim-clothes.jpg?b=1&s=170667a&w=0&k=20&c=twwfci3IXTt3zhKn5MaIP6kmEn7rQWAHzt3OU-8_UD0=',
                      height: 150.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'SEWING \n Duration: 2 months \n Coach: Shivani Das',
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
                      'https://images.unsplash.com/photo-1528712306091-ed0763094c98?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29va2luZ3xlbnwwfHwwfHw%3D&w=1000&q=80',
                      height: 150.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'COOKING \n Duration: 1 months \n Coach: Amrita Oberoi',
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
                      'https://leverageedublog.s3.ap-south-1.amazonaws.com/blog/wp-content/uploads/2020/05/05011631/How-to-Learn-Spoken-English_.png',
                      height: 150.0,
                      width: 150.0,
                      fit: BoxFit.cover,
                    ),
                    Padding(
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
                    Padding(
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
                    Padding(
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
