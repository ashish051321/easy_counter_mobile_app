import 'package:flutter/material.dart';

void main() {
  runApp(MyStatefulApp());
}

class MyStatefulApp extends StatefulWidget {
  @override
  _MyStatefulAppState createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("EasyCounter"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: FlatButton(
                          color: Colors.amberAccent,
                          padding: EdgeInsets.all(0),
                          onPressed: () => print("Settings was tapped !"),
                          child: Container(
                              child: Center(
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.black,
                                  size: 40.0,
                                ),
                              ),
                              height: 100.0,
                              color: Colors.amberAccent),
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: () => {
                            setState((){counter=0;})
                          },
                          padding: EdgeInsets.all(0),
                          child: Container(
                              child: Center(
                                child: Icon(
                                  Icons.stop,
                                  color: Colors.black,
                                  size: 40.0,
                                ),
                              ),
                              height: 100.0,
                              color: Colors.amberAccent),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(width: double.infinity),
              Expanded(
                child: InkWell(
                  onTap: () => {
                    setState((){counter++;})
                  },
                  child: Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$counter',
                            style: TextStyle(
                                fontSize: 64, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 40.0,
                          ),
                          Text(
                            "Tap to increment",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white10),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
