import 'package:daily/pages/login.dart';
import 'package:daily/pages/profile_page.dart';
import 'package:flutter/material.dart';

import '../pages/aboutpage.dart';


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
              child: Text('Welcome to Daily app',
              style: TextStyle(fontSize: 28,),
                selectionColor: Colors.amber,
              ),
            ),
          ),

          ListTile(
            title: Row(
              children: const [
                Icon(Icons.account_circle_rounded,color: Colors.blue,),
                SizedBox(width: 10,),
                Text("My profile"),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.settings,color: Colors.grey,),
                SizedBox(width: 10,),
                Text("Settings"),
              ],
            ),
            onTap: () {
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.info,color: Colors.black,),
                SizedBox(width: 10,),
                Text("About us"),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUsPage()));
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.logout,color: Colors.red,),
                SizedBox(width: 10,),
                Text("Logout"),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));

            },
          ),
        ],
      ),
    );
  }
}
