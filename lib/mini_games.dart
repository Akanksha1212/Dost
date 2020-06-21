import 'package:flutter/material.dart';

class Mini extends StatefulWidget {
  @override
  MyMini createState() => new MyMini();
}

class MyMini extends State<Mini> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mini Exercises'),
          backgroundColor: Colors.pink[200],
        ),
        body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/50/e5/41/50e5411a9ddc169455ba07ac77ca674a.jpg"),
                    fit: BoxFit.cover)),
            child: Column(children: <Widget>[
              Card(
                child: ListTile(
                  leading: Image.network(
                      "https://i.pinimg.com/originals/c3/0a/6a/c30a6a008493985912273959dad11b2c.gif"),
                  title: Text('30 Days of Gratitude'),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  subtitle: Text(
                      'In this activity you have to write 1 thing that you are grateful of everyday. Lets fill the jar!'),
                  isThreeLine: true,
                  trailing: RaisedButton(
                    child: Text('Go'),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black)),
                    onPressed: (null),
                  ),
                ),
                color: Colors.pink[100],
              ),
              Card(
                child: ListTile(
                  leading: Image.network(
                      "https://i.pinimg.com/564x/5c/fe/35/5cfe35f28bd61b83f5255b0221125a77.jpg"),
                  title: Text('Hocus Focus'),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  subtitle: Text('Play these games to improve your focus'),
                  isThreeLine: true,
                  trailing: RaisedButton(
                    child: Text('Go'),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black)),
                    onPressed: (null),
                  ),
                ),
                color: Colors.blue[100],
              ),
              Card(
                child: ListTile(
                  leading: Image.network(
                      "https://i.pinimg.com/564x/89/00/e2/8900e23570125266d311bf87ce64a83f.jpg"),
                  title: Text('Music Therapy'),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  subtitle: Text('Listen to this customized playlist by Dost'),
                  isThreeLine: true,
                  trailing: RaisedButton(
                    child: Text('Go'),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black)),
                    onPressed: (null),
                  ),
                ),
                color: Colors.green[100],
              ),
              Card(
                child: ListTile(
                  leading: Image.network(
                      "https://i.pinimg.com/564x/2f/8a/3c/2f8a3c3c5ff76f6b79b5879582d4d6cc.jpg"),
                  title: Text('Meditation'),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  subtitle: Text(
                      'It helps in reducing stress and improving focus. Lets meditate!'),
                  isThreeLine: true,
                  trailing: RaisedButton(
                    child: Text('Go'),
                    color: Colors.pink[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: Colors.black)),
                    onPressed: (null),
                  ),
                ),
                color: Colors.yellow[100],
              ),
            ])));
  }
}
