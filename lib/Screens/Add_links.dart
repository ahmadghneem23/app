import 'package:flutter/material.dart';

class Addlinks extends StatelessWidget {
  final Function addLinkCallback;

  Addlinks(this.addLinkCallback);

  @override
  Widget build(BuildContext context) {
    String? newLinkTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add New Link ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newlink) {
              newLinkTitle = newlink;
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                addLinkCallback(newLinkTitle);
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              style: TextButton.styleFrom(backgroundColor: Colors.amber))
        ],
      ),
    );
  }
}
