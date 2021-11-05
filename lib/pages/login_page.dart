import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:login_ui_app/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isTouch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Color(0xffc56cf0),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    // bottomRight: Radius.circular(80),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.white38.withOpacity(0.3),
                        Colors.white38.withOpacity(0.1),
                        Colors.white38.withOpacity(0.05),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: getHeader(),
                  ),
                ),
              ),
              SizedBox(height: 30),
              getLogin(),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffa55eea).withOpacity(0.8),
                        Color(0xff7158e2),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isTouch = !_isTouch;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary:
                          _isTouch ? Color(0xff7158e2) : Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  // style: ButtonStyle(
                  //   overlayColor: MaterialStateProperty.all(Colors.transparent),
                  // ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => RegisterPage()));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Color(0xffc56cf0),
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getHeader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 30),
        Container(
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget getLogin() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.black.withOpacity(0.7),
                  size: 25,
                ),
                hintText: "Email",
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: TextField(
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Elusive.key,
                  color: Colors.black.withOpacity(0.7),
                  size: 25,
                ),
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              // style: ButtonStyle(
              //   overlayColor: MaterialStateProperty.all(Colors.transparent),
              // ),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}
