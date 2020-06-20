import 'package:flutter/material.dart';
import 'package:dost/dialog_flow.dart';

class HomePage extends StatefulWidget {
  @override
  MyHomePage createState() => new MyHomePage();
}

class MyHomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.pink[200],
          automaticallyImplyLeading: false,
        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/564x/50/e5/41/50e5411a9ddc169455ba07ac77ca674a.jpg"),
                  fit: BoxFit.cover)),
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
              Image.network("https://i.pinimg.com/originals/f7/28/92/f72892cec8e129bfd8ee70696f77d43d.gif",fit: BoxFit.contain,width: 200,),
              ],),
              
              RaisedButton(
                child: Text('Talk to Dost'),
                color: Colors.pink[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()),
                  );
                },
              ),
            ],
          )),
        );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dost(),
      backgroundColor: Colors.purple[100],
    );
  }
}
