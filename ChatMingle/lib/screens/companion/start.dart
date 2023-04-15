import 'package:flutter/material.dart';
import 'info1.dart';

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
          backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
          title: Text("Find Companion"),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child: Column(
            children: [
              Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/age.jpg')),
              SizedBox(height: 50),
              Text("WELCOME TO AGING TOGETHER",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 18,
                      fontWeight: FontWeight.w600)),
              Text(
                  "Aging Together is a platform which provides you the opportunity to find a companion who can be someone you share same interest with or simply someone who can accompany you on evening walks.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Center(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0, primary: Color.fromRGBO(8, 143, 143, 1)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => info1()));
                    },
                    child: Container(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Start',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ))),
            ],
          ),
        ));
  }
}
