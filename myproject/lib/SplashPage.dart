import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/main.dart';

class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {

    super.initState();

    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(""),
      // ),

      body: Center(
        child: Container(
          color: Colors.pink.shade50,
          child: Center(child: Image.asset('assets/images/mylogo.png',height: 500,width: 500,)),
        ),
      ),
    );
  }
}