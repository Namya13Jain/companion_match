import 'package:flutter/material.dart';
import 'package:employfy/screens/companion/start.dart';
import 'package:employfy/screens/home.dart';
import 'package:employfy/screens/learn.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
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
        'start': (context) => Start(),
        'home_screen': (context) => const HomeScreen(),
        'learn': (context) => const LearnPage(),
        //'about_us':(context) =>
        //'feed_back':(context) =>
      },
    );
  }
}

/* class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int onClick = 0;

  final List pageToNavigate = [
    const HomeScreen(), //home
    Start(), //finding companion
    const LearnPage(), //Learn
    //chat
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pageToNavigate[onClick],
        backgroundColor: Colors.white,
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: const Duration(milliseconds: 150),
          backgroundColor: Colors.white,
          color: const Color.fromRGBO(250, 100, 7, 0.8),
          onTap: (index) {
            setState(() {
              onClick = index;
              print(onClick);
            });
          },
          items: const <Widget>[
            Icon(Icons.home_filled),
            Icon(Icons.person_2_rounded),
            Icon(Icons.book),
            // Icon(Icons.chat_bubble),
          ],
        ),
      ),
    );
  }
}
 */
