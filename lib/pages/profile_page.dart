import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/drawer.dart';
import 'login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        endDrawer: const MyDrawer(),
        appBar: AppBar(
            title: const Text("Expense Manager"),
            ),
        body: Padding(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                      },
                      backgroundColor: Colors.red,
                      label: const Text("Login"),
                      icon: const Icon(Icons.login),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Subscriptions coming soon.',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          timeInSecForIosWeb: 1,
                        );
                      },
                      backgroundColor: Colors.red,
                      label: const Text("Subscribe"),
                      icon: const Icon(Icons.subscriptions),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Unsubscriptions coming soon',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          timeInSecForIosWeb: 1,
                        );
                      },
                      backgroundColor: Colors.red,
                      label: const Text("UnSubscribe"),
                      icon: const Icon(Icons.unsubscribe),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {
                        Fluttertoast.showToast(
                          msg: 'Data cleared.',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.grey,
                          textColor: Colors.black,
                          timeInSecForIosWeb: 1,
                        );
                      },
                      backgroundColor: Colors.red,
                      label: const Text("Clear data"),
                      icon: const Icon(Icons.clear),
                    ),


                  ],
                ),
          ),
        ),
        ),
        );
  }
}
