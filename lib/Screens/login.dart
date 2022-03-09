import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hmzat_wasal/Classes/constant.dart';
import 'package:hmzat_wasal/Classes/signwith.dart';
import 'package:hmzat_wasal/Screens/signup.dart';


class Login extends StatefulWidget {

   static const String PageName="Login";
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool a = true;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.width;
    final sizeboxH= height*0.07;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    height: 100,
                    child: SvgPicture.asset(
                      "images/HamzatWasl.svg",
                      color: Colors.green,
                      fit: BoxFit.fitHeight,
                      matchTextDirection: true,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "همزة وصل",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sizeboxH,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      hintText: "Email or Username",
                      prefixIcon: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sizeboxH,
                  ),
                  TextFormField(
                    obscureText: a,
                    cursorHeight: 30,
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      hintText: "Password",
                      prefixIcon: const Icon(
                        Icons.lock,
                        size: 30,
                        color: Colors.green,
                      ),
                      //suffixIcon: Icon(Icons.visibility),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            a = !a;
                          });
                        },
                        icon: Icon(
                          a ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                          color: Colors.grey,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(15),
                    ),
                  ),
                  SizedBox(
                    height: sizeboxH,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: value,
                        checkColor: Colors.white,
                        activeColor:Colors.green,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      const Text(
                        "Remember me",
                        style: TextStyle(fontWeight: FontWeight.bold,color: kGreyColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sizeboxH,
                  ),
                  SizedBox(
                    width: width,
                    height: 50,
                    child:ElevatedButton(
                      onPressed: (){
                        setState(() {

                        });
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: sizeboxH,
                  ),
                  GestureDetector(
                    child: const Text(
                      "Have you forgot your password ?"
                    ),
                  ),
                  SizedBox(
                    height: sizeboxH,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width*0.3,
                         color: kGreyColor,
                      ),
                      const Text("Or"),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width*0.3,
                        color: kGreyColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sizeboxH,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SignWith("images/google.png"),
                      SignWith("images/facebook.png"),
                      SignWith("images/twitter.png"),
                    ],
                  ),
                   SizedBox(
                    height: sizeboxH,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:30,right:30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Don't have account ?"),
                        GestureDetector(
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              Navigator.pushNamed(context, SignUp.PageName);
                            });
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

