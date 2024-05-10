// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learningfirebase/firebase_options.dart';
import 'package:learningfirebase/auth/main_page.dart';
import 'package:learningfirebase/pages/chats_page.dart';
import 'package:learningfirebase/pages/home_page.dart';
import 'package:learningfirebase/pages/notif_page.dart';
import 'package:learningfirebase/pages/onboarding_page.dart';
import 'package:learningfirebase/pages/profile_page.dart';
import 'package:learningfirebase/pages/settings_page.dart';
import 'package:learningfirebase/pages/shopping_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //must put this
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      routes: {
        '/onboardingpage': (context) => OnboardingPage(),
        '/mainpage': (context) => MainPage(),
        '/profilepage': (context) => ProfilePage(),
        '/homepage': (context) => HomePage(),
        '/shoppingpage': (context) => ShoppingPage(),
        '/notifpage': (context) => NotificationsPage(),
        '/settingspage': (context) => SettingsPage(),
        '/chatspage': (context) => ChatsPage(),
      },
    );
  }
}
