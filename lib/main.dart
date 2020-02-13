import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyButton(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> strings = ['I', 'very', 'love', "learning","Flutter!"];
  String displayedString = "Let's Start!";

  void onPressOfButton() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 4 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Flutter Simple Example"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(displayedString, style: TextStyle(fontSize: 60.0)),
              Padding(padding: EdgeInsets.all(100.0)),
              RaisedButton(
                child: Text(

                  "Press The Button",
                  style: TextStyle(color: Colors.white,fontSize: 18.0),

                ),

                color: Colors.pinkAccent,
                onPressed: onPressOfButton,

              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Text (
         "     by" "        Ali"   "Akgün",
            style: TextStyle(color: Colors.white,fontSize: 10.0),


      ),
      ),
    );

  }
}