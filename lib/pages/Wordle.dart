import 'package:flutter/material.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/drawer.dart';

class WordlePage extends StatefulWidget {
  const WordlePage({Key? key}) : super(key: key);

  @override
  State<WordlePage> createState() => _WordlePageState();
}

class _WordlePageState extends State<WordlePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: Text("Hi Wordle"),
      );
  }
}
