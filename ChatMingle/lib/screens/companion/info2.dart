import 'package:employfy/utils/commons.dart';
import 'package:flutter/material.dart';
import 'info3.dart';
import 'info1.dart';

class info2 extends StatefulWidget {
  static const String id = 'MoreInfo';
  @override
  State<info2> createState() => _MoreInfo();
}

class _MoreInfo extends State<info2> {
  final formKey = GlobalKey<FormState>();
  String name = "Preferences";
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
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => info1()));
              },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 20,
              )),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Tell Us About Yourself",
                        style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 19,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 10.0),
                    const TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Describe Yourself",
                            contentPadding:
                                const EdgeInsets.only(bottom: 20.0, top: 80.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ))),
                    const Text("Tell us about your Hobbies",
                        style: TextStyle(
                            color: Color.fromARGB(255, 35, 34, 34),
                            fontSize: 19,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 10.0),
                    const TextField(
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Write your hobbies",
                            contentPadding:
                                EdgeInsets.only(bottom: 20.0, top: 80.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ))),
                    Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Center(
                            child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            primary: const Color.fromRGBO(250, 100, 7, 0.8),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => info3()));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            child: const Center(
                                child: Text(
                              'Next Step',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                        ))),
                  ],
                ))));
  }
}
