// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Text(
              "Settings And Privacy",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person_outline, color: Colors.black),
                    title: Text("Edit Profile"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, '/editprofilepage');
                      //PERGI EDIT PROFILE
                    },
                  ),
                  buildDivider(),
                  ListTile(
                    leading: Icon(Icons.lock_outline, color: Colors.black),
                    title: Text("Change Password"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, '**');
                      //PERGI
                    },
                  ),
                  buildDivider(),
                  ListTile(
                    leading:
                        Icon(Icons.notifications_outlined, color: Colors.black),
                    title: Text("Notifications"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, '**');
                      //PERGI
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "Help and Support",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading:
                        Icon(Icons.live_help_outlined, color: Colors.black),
                    title: Text("Help Center"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, '**');
                      //PERGI
                    },
                  ),
                  buildDivider(),
                  ListTile(
                    leading:
                        Icon(Icons.contact_mail_outlined, color: Colors.black),
                    title: Text("Contact Us"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, '**');
                      //PERGI
                    },
                  ),
                  buildDivider(),
                  ListTile(
                    leading: Icon(Icons.info_outline, color: Colors.black),
                    title: Text("About Us"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.pushNamed(context, '**');
                      //PERGI
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              "Logout",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.person_outline, color: Colors.black),
                    title: Text("Logout"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.pop(context);
                      //PERGI EDIT PROFILE
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}
