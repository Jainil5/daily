import 'package:daily/pages/todo.dart';
import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/drawer.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Image.asset("assets/images/california.jpg"),
                const Center(
                    child: Text("DAILY APP",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.blue),)),
                const SizedBox(height: 10,),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                const SizedBox(height: 10,),

                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Enter your mail ID',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter a Password',
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: otpController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter OTP sent to your mail id',
                    ),
                  ),
                ),
                const SizedBox(height: 10,),

                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: FloatingActionButton.extended(
                      extendedPadding: const EdgeInsets.all(16),
                      onPressed: () {
                        if(nameController.text.toString().isEmpty || passwordController.text.toString().isEmpty || otpController.text.toString().isEmpty){
                          Fluttertoast.showToast(
                            msg: 'None of the fields can be empty.',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.grey,
                            textColor: Colors.black,
                            timeInSecForIosWeb: 1,
                          );
                        }
                        else{
                          Fluttertoast.showToast(
                            msg: 'Account created',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.grey,
                            textColor: Colors.black,
                            timeInSecForIosWeb: 1,
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));

                        }

                      }, icon: const Icon(Icons.login_rounded), label: const Text("Sign up",style: TextStyle(fontSize: 24),),
                    ),
                ),
                const SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Already have an account?'),
                    TextButton(
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                      },
                    )
                  ],
                ),
              ],
            ),
        ),
      ),
    );
  }
}
