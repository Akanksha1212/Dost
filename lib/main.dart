import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dost/dialog_flow.dart';
import 'home_page.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/06/92/2d/06922de35b6f544818fac5b172348b17.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
              child: Image.asset('assets/dost.png'),
            )),
    );
  }
}
