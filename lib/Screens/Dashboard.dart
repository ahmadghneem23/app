import 'package:chatiraqi/Screens/Add_links.dart';
import 'package:chatiraqi/Widgets/Websiteslist.dart';
import 'package:chatiraqi/models/links.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

List<Links> links = [];

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // button for dashboard to send data to firebase store
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Addlinks((newLinkTitle) {
                        //add links to newlinktitle
                        setState(() {
                          links.add(Links(links: newLinkTitle));
                          Navigator.pop(context);
                        });
                      }))));
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),

      backgroundColor: Colors.amber[400],
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.playlist_add,
                  size: 50,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Dashbord",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            Text(
              "${links.length} chat website",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Websiteslist(links),
              ),
            )
          ],
        ),
      ),
    );
  }
}
