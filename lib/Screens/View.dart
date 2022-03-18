import 'package:chatiraqi/Screens/AdminDashboard.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class View extends StatelessWidget {
  final website;

  View(this.website);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: "${website}",
      ),
    );
  }
}
