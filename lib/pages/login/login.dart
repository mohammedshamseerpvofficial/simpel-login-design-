import 'package:flutter/material.dart';
import 'package:login/pages/home.dart';
import 'package:login/pages/login/fungtin.dart';
import 'package:login/pages/signup/signup.dart';
import 'package:stroke_text/stroke_text.dart';
import './fungtin.dart';
import 'package:dio/dio.dart';
class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _username = TextEditingController();

  final TextEditingController _password = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
   

    super.initState();
  }

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
          body: Container(
            // color: Colors.green,
            margin: const EdgeInsets.only(top: 170),
            child: ListView(
              children: [
                 Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                Padding(
                  padding: const EdgeInsets.only(left: 28, right: 28),
                  child: TextField(
                    cursorColor: Colors.white,
                    controller: _username,
                    autofocus: false,
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Color.fromRGBO(255, 255, 255, 1)),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
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
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                textfiled(password: _password),
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
                        minimumSize: const Size(260, 50), //////// HERE
                        textStyle: const TextStyle(color: Colors.black)),
                    onPressed: () {
                       Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => home()),
                          (Route<dynamic> route) => false);
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(color: Colors.black, fontSize: 21),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => home()),
                          (Route<dynamic> route) => false);
                  },
                  child: const Text(
                    'Forgot your password ?',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 130),
                  child: TextButton(
                    onPressed: (){
                      getHttp();
                  
                      // Navigator.of(context).pushAndRemoveUntil(
                      //     MaterialPageRoute(builder: (context) => Signup()),
                      //     (Route<dynamic> route) => false);

                    
                    },
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future getHttp()async{
  try {
     var response;
      response = await Dio().get('https://jsonplaceholder.typicode.com/users');
      
      final name=response.data[0].name;
  
    print(name);
  } catch (e) {
    print(e);
  }
}
}

class textfiled extends StatelessWidget {
  textfiled({
    Key? key,
    required TextEditingController password,
  }) : _password = password, super(key: key);

  final TextEditingController _password;

var hello='hello';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 28),
      child: TextField(
        cursorColor: Colors.white,
        controller: _password,
        autofocus: false,
        style: const TextStyle(
            fontSize: 16.0,
            color: Color.fromRGBO(255, 255, 255, 1)),
        decoration: const InputDecoration(
          prefixIcon: Icon(
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
    );

    
  }




}
