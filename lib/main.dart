import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'Home',
      theme: ThemeData(
    primarySwatch : Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home :const MyHomeScreen()
      
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('hi')
      )
    );
  }
}