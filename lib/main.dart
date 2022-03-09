import 'package:flutter/material.dart';
import 'package:hmzat_wasal/Screens/login.dart';
import 'package:hmzat_wasal/Screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute:  Login.PageName,
      routes:{
        Login.PageName:(context) => Login() ,
        SignUp.PageName:(context) =>  SignUp() ,
      },
    );
  }
}

