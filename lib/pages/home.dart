import 'package:daily/pages/Wordle.dart';
import 'package:daily/pages/expense.dart';
import 'package:daily/pages/news.dart';
import 'package:daily/pages/notes.dart';
import 'package:daily/pages/tasks.dart';
import 'package:daily/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'dict.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Daily"),
        ),
        endDrawer: const MyDrawer(),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          animationDuration: const Duration(seconds:2),
          surfaceTintColor: Colors.red,
          backgroundColor: Colors.deepPurple,
          height: 60,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.book_rounded),
              icon: Icon(Icons.book_outlined),
              label: 'Word',
            ),
            NavigationDestination(
              selectedIcon:Icon(Icons.task) ,
              icon: Icon(Icons.task_outlined),
              label: 'Tasks',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.notes_rounded),
              icon: Icon(Icons.notes),
              label: 'Notes',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.newspaper),
              icon: Icon(Icons.newspaper),
              label: 'News',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.monetization_on),
              icon: Icon(Icons.monetization_on_outlined),
              label: 'Expense',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.wordpress),
              icon: Icon(Icons.wordpress),
              label: 'Wordle',
            ),
          ],
        ),
        body: const <Widget>[
          DictPage(),
          TaskPage(),
          NotesPage(),
          NewsPage(),
          ExpensePage(),
          WordlePage(),
        ][currentPageIndex],
      ),
    );
  }
}
