import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:learningfirebase/components/item_square.dart';
import 'package:learningfirebase/pages/notif_page.dart';
import 'package:learningfirebase/pages/profile_page.dart';
import 'package:learningfirebase/pages/shopping_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> listOfPages = [
    HomePageContent(),
    NotificationsPage(),
    ShoppingPage(),
    ProfilePage(),
  ];

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF885A3A),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/chatspage');
            },
            icon: Icon(
              Icons.chat_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFFC9B09A),
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'assets/logos/blacklogo.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      title: Text('P R O F I L E'),
                      onTap: () {
                        Navigator.pushNamed(context, '/profilepage');
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.notifications_active,
                        color: Colors.black,
                      ),
                      title: Text('N O T I F I C A T I O N S'),
                      onTap: () {
                        Navigator.pushNamed(context, '/notifpage');
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.trolley,
                        color: Colors.black,
                      ),
                      title: Text('C A R T S'),
                      onTap: () {
                        Navigator.pushNamed(context, '/shoppingpage');
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.trolley,
                        color: Colors.black,
                      ),
                      title: Text('M A R K E T'),
                      onTap: () {
                        Navigator.pushNamed(context, '/shoppingpage');
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                      title: Text('S E T T I N G'),
                      onTap: () {
                        Navigator.pushNamed(context, '/settingspage');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  'Log Out',
                ),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
        ),
      ),
      body: listOfPages[selectedIndex],
      bottomNavigationBar: Container(
        color: Color(0xFF885A3A),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 15.0,
          ),
          child: GNav(
            backgroundColor: Color(0xFF885A3A),
            color: Colors.black,
            activeColor: Colors.white,
            tabBackgroundColor: Color(0xFFA77D54),
            padding: EdgeInsets.all(15),
            gap: 5,
            selectedIndex: selectedIndex,
            onTabChange: navigateBottomBar,
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: Icons.notifications_active,
                text: "Notif",
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: "Shop",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 25.0,
          left: 10.0,
          right: 10.0,
          bottom: 10.0,
        ),
        child: SizedBox(
          height: 700, // Adjust the height as needed
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 30,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return ItemSquare(
                textInSquare: 'item description lorem ipsum',
                iconData: Icons.favorite,
              );
            },
          ),
        ),
      ),
    );
  }
}
