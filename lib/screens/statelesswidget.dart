
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Str extends StatelessWidget {
  const Str({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
          //adding padding around card
            padding:  EdgeInsets.all(20.0),
            child:  Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // new Text("Hey"),
                  // new Text("My name"),
                  // new Text("Is Raunak")

                   MyCard(
                      title: Text("I love Flutter", style: new TextStyle(fontSize: 20.0)),
                      icon: Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
                  ),
                   MyCard(
                      title:  Text("I love Donuts", style: new TextStyle(fontSize: 20.0)),
                      icon:  Icon(Icons.donut_large, size: 40.0, color: Colors.brown)
                  ),
                   MyCard(
                      title:  Text("I see you", style: new TextStyle(fontSize: 20.0)),
                      icon:  Icon(Icons.visibility, size: 40.0, color: Colors.blue)
                  )
                ]
            )
        );

  }
}

class MyCard extends StatelessWidget {
  //adding constructor
  MyCard({required this.title, required this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context){
    return Container(
      //adding bottom padding on card
        padding: EdgeInsets.only(bottom: 20.0),
        child:  Card(
            child:  Container(
              //adding padding inside card
                padding:  EdgeInsets.all(15.0),
                child:  Column(
                    children: <Widget>[
                      // new Text("I love Flutter"),
                      // new Icon(Icons.favorite)
                      this.title,
                      this.icon
                    ]
                )
            )

        )
    );

  }
}



