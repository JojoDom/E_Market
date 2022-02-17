import 'package:e_market/User/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const GoogleSignIn());
}

class GoogleSignIn extends StatefulWidget {
  const GoogleSignIn({ Key? key }) : super(key: key);

  @override
  _GoogleSignInState createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E_Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.green
      ),
      home: const SignInPage(),
    );
  }
}