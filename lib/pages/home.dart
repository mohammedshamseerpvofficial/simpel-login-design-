import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'dart:ui';

class home extends StatelessWidget {
  home({super.key});

  final TextEditingController _username = TextEditingController();

  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/img1.jpg'), fit: BoxFit.cover)),
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              // color: Colors.green,
              // margin: const EdgeInsets.only(top: 170),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GlassmorphicContainer(
                    width: 350,
                    height: 350,
                    borderRadius: 20,
                    blur: 15,
                    alignment: Alignment.bottomCenter,
                    border: 0,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                          Color.fromARGB(255, 0, 0, 0).withOpacity(0.05),
                        ],
                        stops: [
                          0.1,
                          1,
                        ]),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.5),
                        Color((0xFFFFFFFF)).withOpacity(0.5),
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 30, top: 50),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  'Name:',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 7),
                                  child: Text(
                                    'shamseer pv',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 21),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                'Email:',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 21),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Text(
                                  'shamseer@gmail.com',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21),
                                ),
                              )
                            ],
                          ),

                          RawMaterialButton(
                            fillColor: Colors.black,
                            onPressed: (){

                          })
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
