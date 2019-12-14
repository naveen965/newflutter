import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Alert Dialog",
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget{
  //const HomeScreen({Key key}) :super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('button'),),
      body: MainStatefullWidget(),
    );
  }
}

class MainStatefullWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MainStatefullWidgetState();  
}

class MainStatefullWidgetState extends State{
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text (
            'Number $count',
            style: TextStyle(fontSize: 20.0)
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                count = count + 1;
              });
            },
            child: Text('Click'),
          )
        ],
      ),
    );
  }
}
/*
home: Center (
        child:RaisedButton(
          onPressed: null,
          child: Text(
            "Hi Kelaniya",
            style: TextStyle(color: Colors.white),
          ),
        ),
        
    )
Widget build(BuildContext context) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const RaisedButton(
          onPressed: null,
          child: Text(
            'Disabled Button',
            style: TextStyle(fontSize: 20)
          ),
        ),
        const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {},
          child: const Text(
            'Enabled Button',
            style: TextStyle(fontSize: 20)
          ),
        ),
        const SizedBox(height: 30),
        RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Gradient Button',
              style: TextStyle(fontSize: 20)
            ),
          ),
        ),
      ],
    ),
  );
}
 */