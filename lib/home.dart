import 'package:flutter/material.dart';
import 'data.dart';
import 'drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: drawer(),
      ),
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 22, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.grey[200],
        title: const Text(
          "Search in Drive",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[700],
          showUnselectedLabels: true,
          backgroundColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.star_border), label: "Starred"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Shared"),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder_rounded), label: "Files"),
          ]),
      body: pages[currentPage],
    );
  }
}
