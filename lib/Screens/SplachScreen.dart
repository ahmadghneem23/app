import  'package:chatiraqi/Screens/navbar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Splachscreen extends StatefulWidget {
  const Splachscreen({Key? key}) : super(key: key);
  @override
  _SplachscreenState createState() => _SplachscreenState();
}
class _SplachscreenState extends State<Splachscreen> {
  @override
  void initState() {
    // set time to load the new page
    Future.delayed(Duration(seconds: 7),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>navbar()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  alignment: Alignment.center,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: Lottie.asset("assets/chat-bubble.json"),
        ),
        SizedBox(height: 20,),
        Text("Chat Iraqi",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ],
    ),
),

    );
  }
}
