import 'package:flutter/material.dart';

class SitesTile extends StatelessWidget {
  final String linkTitle;
  final void Function(bool?) checkboxChange;

  SitesTile({required this.linkTitle, required this.checkboxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          linkTitle,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // style: TextStyle(
          //   decoration: isChecked ?TextDecoration.lineThrough : null  ,
          // ),
        ),
      ),
    );
  }
}
