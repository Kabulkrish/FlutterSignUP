import 'package:flutter/material.dart';
import "SignUp.dart";


void main()=> runApp(MyApp());





class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "sign_Up",
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
 home: SignUpPage(),
    );
  }
}