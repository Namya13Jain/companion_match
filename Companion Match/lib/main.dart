//import 'package:employfy/screens/chat.dart';
import 'package:employfy/screens/explore_course.dart';
import 'package:flutter/material.dart';
import 'package:employfy/screens/companion/start.dart';
import 'package:employfy/screens/home.dart';
import 'package:employfy/screens/learn.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
//import 'package:stream_chat_flutter/stream_chat_flutter.dart';

/* final apiKey = "h9hrjbfs5c46";
final userToken =
    "xwk6jybcwn3kvx7n9ua2wcqrej65s6m86cn7nnzv7d4r2sn5tus7gpsdpmcv7ahd"; */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Mingle',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(250, 100, 7, 0.8),
        fontFamily: 'Nunito',
        highlightColor: const Color.fromRGBO(250, 100, 7, 0.5),
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset("assets/images/logo.png"),
        nextScreen: const HomeScreen(),
        backgroundColor: Colors.white,
        splashIconSize: 500,
        duration: 2000,
        splashTransition: SplashTransition.sizeTransition,
      ),
      routes: {
        'start': (context) => Start(), //companion
        'home_screen': (context) => const HomeScreen(), //home screen
        'learn': (context) => const LearnPage(), //learning page
        //'about_us':(context) =>  //about us
        //'feed_back':(context) => //feedback
        //'chat':(context) => //chat
        'explore_course': (context) => const EnrolCourse(),
      },
    );
  }
}
