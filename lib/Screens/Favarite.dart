import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Favarite extends StatefulWidget {
  const Favarite({Key? key}) : super(key: key);

  @override
  _FavariteState createState() => _FavariteState();
}

class _FavariteState extends State<Favarite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: "https://www.iraqiachat.com/",
          onWebViewCreated: (controller){
          },
    )
    );
  }
}
