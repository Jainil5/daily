import 'package:daily/pages/expense.dart';
import 'package:daily/pages/login.dart';
import 'package:daily/pages/news.dart';
import 'package:daily/pages/notes.dart';
import 'package:daily/pages/tasks.dart';
import 'package:daily/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'pages/Wordle.dart';
import 'pages/dict.dart';
import 'pages/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}
