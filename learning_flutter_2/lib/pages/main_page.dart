import 'package:flutter/material.dart';
import 'package:learning_flutter_2/pages/calculator_screen.dart';
import 'package:learning_flutter_2/pages/contacts_page.dart';
import 'package:learning_flutter_2/pages/drawer_header.dart';
import 'package:learning_flutter_2/pages/home_page.dart';
import 'package:learning_flutter_2/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // backgroundColor: Colors.cyanAccent,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyDrawerHeader(),
              drawerList(),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text("My Application"),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone), label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Calculator"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: "Profile"),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.amber,
        fixedColor: Colors.blueAccent,
      ),
    );
  }

  final pages = [
    const HomePage(),
    const ContactsPage(),
    const CalculatorScreen(),
    const ProfilePage(),
  ];

  Widget drawerList() {
    return Column(
      children: [
        menuItem(0, "Home", Icons.home),
        menuItem(1, "Contacts", Icons.contacts),
        menuItem(3, "Profile", Icons.calculate)
      ],
    );
  }

  Widget menuItem(int id, String title, IconData icon) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            currentIndex = id;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
