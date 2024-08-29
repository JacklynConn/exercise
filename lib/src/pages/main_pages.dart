import 'package:flutter/material.dart';
import '../pages/notification_pages.dart';
import '../pages/home_pages.dart';
import '../pages/profile_pages.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int ind = 1;
  String titleName = "Home";
  Widget _pageSelected = const HomePages();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titleName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.pin_drop,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
      body: _pageSelected,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ind,
        onTap: (valIndex) {
          setState(
            () {
              ind = valIndex;
              if (ind == 0) {
                titleName = "Notification";
                _pageSelected = const NotificationPages();
              } else if (ind == 1) {
                titleName = "Home";
                _pageSelected = const HomePages();
              } else {
                titleName = "Profile";
                _pageSelected = const ProfilePages();
              }
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
