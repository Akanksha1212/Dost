import 'package:flutter/material.dart';
import 'package:dost/dialog_flow.dart';
import 'package:dost/widget/messaging_widget.dart';
import 'package:dost/mini_games.dart';

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
                  Image.network(
                    "https://i.pinimg.com/originals/f7/28/92/f72892cec8e129bfd8ee70696f77d43d.gif",
                    fit: BoxFit.contain,
                    width: 200,
                  ),
                ],
              ),
              Card(
                child: ListTile(
                  title: Text('              I am your dost, Honey Bunny'),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  subtitle: Text(
                      'I know its a weird name. My creator gave me this super cheesy name. You can call me anything you want. Do you want to talk to me? Click on Talk to Dost'),
                  isThreeLine: true,
                ),
                color: Colors.pink[100],
              ),
              SizedBox(
                height: 5,
              ),
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
              SizedBox(
                height: 5,
              ),
              
              RaisedButton(
                child: Text('Go to Mini Exercises'),
                color: Colors.pink[100],
                
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdRoute()),
                  );
                },
              ),
              RaisedButton(
                child: Text('About'),
                color: Colors.pink[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: BorderSide(color: Colors.black)),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20.0)), 
                          child: Container(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintMaxLines: 3,
                                        hintText:
                                            '         Dost was made with ❤️️ by                               Akanksha Singh & Kamalpreet Kaur '),
                                  ),

                                  SizedBox(
                                    width: 320.0,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Ok",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      color: const Color(0xFF1BC0C5),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
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
class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Mini(),
      backgroundColor: Colors.purple[100],
    );
  }
}
