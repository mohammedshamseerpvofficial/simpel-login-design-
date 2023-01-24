import 'package:flutter/material.dart';
import 'package:login/pages/home.dart';
import 'package:login/pages/login/login.dart';

import 'package:stroke_text/stroke_text.dart';

class Signup extends StatelessWidget {
  Signup({super.key});

  final TextEditingController _username = TextEditingController();

  final TextEditingController _password1 = TextEditingController();

  final TextEditingController _password2 = TextEditingController();

  final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/img1.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            margin: const EdgeInsets.only(top: 50),
            child: ListView(
              children: [
                Column(
                  children: [
                    const StrokeText(
                      text: "R",
                      strokeColor: Colors.white,
                      strokeWidth: 2,
                      textStyle: TextStyle(
                        fontSize: 100,
                        color: Colors.transparent,
                      ),
                    ),
                    const Text(
                      'Create Your Account ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 28, right: 28, top: 40),
                      child: TextField(
                        cursorColor: Colors.white,
                        controller: _username,
                        autofocus: false,
                        style: const TextStyle(
                            fontSize: 16.0,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                        decoration: const InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            hintText: 'Username',
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28, right: 28),
                      child: TextField(
                        cursorColor: Colors.white,
                        controller: _email,
                        autofocus: false,
                        style: const TextStyle(
                            fontSize: 16.0,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          hintText: 'E-Mail',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28, right: 28),
                      child: TextField(
                        cursorColor: Colors.white,
                        controller: _password1,
                        autofocus: false,
                        style: const TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28, right: 28),
                      child: TextField(
                        cursorColor: Colors.white,
                        controller: _password2,
                        autofocus: false,
                        style: const TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 51),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.white,
                            shadowColor: const Color.fromARGB(255, 39, 38, 38),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            minimumSize: Size(260, 50), //////// HERE
                            textStyle: const TextStyle(color: Colors.black)),
                        onPressed: () {
                           Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => home()),
                          (Route<dynamic> route) => false);
                        },
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 21),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 91),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) => Login()),
                              (Route<dynamic> route) => false);
                        },
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
