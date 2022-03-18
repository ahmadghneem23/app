import 'package:chatiraqi/Screens/AdminDashboard.dart';
import 'package:chatiraqi/Screens/Favarite.dart';
import 'package:chatiraqi/Screens/Home.dart';
import 'package:chatiraqi/Widgets/my_drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  _navbarState createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int index = 0;
  final Screen = [Favarite(), Home()];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.select_all,
        size: 30,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text(
          "شات عراقية IQ",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AdminDashboard()));
            },
          )
        ],
      ),
      body: Screen[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.orange,
        height: 60,
        index: index,
        items: items,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
