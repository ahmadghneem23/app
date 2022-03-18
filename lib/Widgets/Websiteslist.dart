import 'package:chatiraqi/Widgets/SitesTile.dart';
import 'package:chatiraqi/models/links.dart';
import 'package:flutter/material.dart';

class Websiteslist extends StatefulWidget {
  final List <Links> links;
  Websiteslist(this.links);

@override
State<Websiteslist> createState() => _WebsiteslistState();}

class _WebsiteslistState extends State<Websiteslist> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.links.length,
      itemBuilder: (contex, index) {
        return SitesTile(
          linkTitle: widget.links[index].links,
           checkboxChange: (newValue) {
          //   setState(() {
          //     widget.links[index].doneChange();
          //   });
           },
        );
      },
    );

  }
}
