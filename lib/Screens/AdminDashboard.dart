import 'package:chatiraqi/Screens/Dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "شات عراقية IQ",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: _initializeFirebase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Login();
            }
            return const Center(child: CircularProgressIndicator(),
            );
          }),
    );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static Future<User?> loginUsingEmailPassword
  ({required String email,required String password,required BuildContext context})
  async
  {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  try{
  UserCredential userCredential =await auth.signInWithEmailAndPassword(email: email, password: password);
  user =userCredential.user;
  }on FirebaseAuthException
  catch(e){
  if(e.code=="user-not-found"){
  print("No User found for that email");
  }
  }return user;
}

@override
Widget build(BuildContext context) {
    TextEditingController  _emailController =TextEditingController();

    TextEditingController  _passwordController =TextEditingController();
  return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login to Dashboard ☠",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
           TextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                hintText: "Admin Email",
                prefixIcon: Icon(
                  Icons.mail,
                  color: Colors.black,
                )),
          ),
          const SizedBox(
            height: 40,
          ),
           TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.security,
                  color: Colors.black,
                )),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: RawMaterialButton(
              fillColor: Colors.amber,
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () async{
                User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
              print(user);
              if(user != null){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Dashboard()));
              }
              },
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ));
}}
