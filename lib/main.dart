import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:login_ui_app/pages/login_page.dart';
import 'package:login_ui_app/pages/register_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:fluttericon/elusive_icons.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedSplashScreen(
      duration: 3000,
      splash: 'assets/images/logo.png',
      nextScreen: HomeScreen(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
      backgroundColor: Color(0xffc56cf0),
    ),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isTouch = false;
  @override
  Widget build(BuildContext context) {
    // final PageController _controller = PageController(initialPage: 0);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginPage(),
      // body: PageView(
      //   scrollDirection: Axis.horizontal,
      //   controller: _controller,
      //   children: [
      //     LoginPage(),
      //     RegisterPage(),
      //   ],
      // ),
    );
  }
}
