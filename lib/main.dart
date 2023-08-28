import 'package:flutter/material.dart';
import 'package:te/note/addnote.dart';
import 'package:te/screens/home.dart';

import 'auth/login.dart';
import 'auth/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login',
      initialRoute: 'login',
      routes: {
        'login': (context) => Login(),
        'signup': (context) => SignUp(),
        'home': (context) => HomePage(),
        'addnote': (context) => AddNotes(),
      },
    );
  }
}
