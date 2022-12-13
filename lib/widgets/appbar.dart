import 'package:flutter/material.dart';

class MyAB extends StatefulWidget {
  const MyAB({Key? key}) : super(key: key);

  @override
  State<MyAB> createState() => _MyABState();
}

class _MyABState extends State<MyAB> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text("Daily"),
    );
  }
}
