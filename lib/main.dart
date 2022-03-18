import 'package:chatiraqi/Screens/SplachScreen.dart';
import 'package:chatiraqi/services/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp();
  await AuthService().get0rCreateUser();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const Splachscreen(),
    );
  }
}
