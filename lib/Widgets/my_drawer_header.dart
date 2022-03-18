
import 'package:chatiraqi/Screens/AboutUS.dart';
import 'package:chatiraqi/Screens/Home.dart';
import 'package:chatiraqi/Screens/Support.dart';
import 'package:chatiraqi/Widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 80, 24, 0),
          child: Column(
            children: [
              headerWiget(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: DrawerItem(
                  name: 'Home',
                  icon: Icons.home,
                  onPressd: () => onItemPressed(context, index: 0),
                ),
              ),
              Divider(
                height: 2,
                color: Colors.amber,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 8),
                child: DrawerItem(
                    name: 'Support',
                    icon: Icons.support,
                    onPressd: () => onItemPressed(context, index: 1)),
              ),
              Divider(
                height: 2,
                color: Colors.amber,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: DrawerItem(
                    name: 'About Us',
                    icon: Icons.import_contacts_sharp,
                    onPressd: () => onItemPressed(context, index: 2)),
              ),
              SizedBox(
                height: 220,
              ),
              Text(
                "© 2022 ChatIraqi. All Rights Reserved | Design by Mr.Robot Comp",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Support()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AboutUs()));
        break;
      default:
        Navigator.pop(context);
        break;
    }
  }

  Widget headerWiget() {

    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 90,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                'assets/logo.jpg',
              ))),
        ),
        Text(
          "دردشة عراقية",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
