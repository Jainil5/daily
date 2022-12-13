import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              shape: BoxShape.rectangle,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Text('Welcome to Expense Manager',
              style: TextStyle(fontSize: 28,),
                selectionColor: Colors.amber,
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
            },
          ),
          ListTile(
            title: const Text('My Profile'),
            onTap: () {
            },
          ),
          ListTile(
            title: const Text('About Us'),
            onTap: () {
            },
          ),
          ListTile(
            title: const Text('Sign Out'),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}
