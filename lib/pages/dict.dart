import 'package:daily/widgets/bottom_bar.dart';
import 'package:daily/widgets/drawer.dart';
import 'package:flutter/material.dart';

class DictPage extends StatefulWidget {
  const DictPage({Key? key}) : super(key: key);

  @override
  State<DictPage> createState() => _DictPageState();
}

class _DictPageState extends State<DictPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Center(
            child: Text("Word of the day",style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            color: Colors.black,
            child: const Center(
              child: Padding(padding: EdgeInsets.all(8),
              child: Text("Flutter",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width:  300,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: const [
                  Text("Meaning",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("---",style: TextStyle(fontSize: 25),),
                  Text("Flutter is an open-source UI software development kit created by Google. "
                      "It is used to develop cross-platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, "
                      "and the web from a single codebase.",style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
