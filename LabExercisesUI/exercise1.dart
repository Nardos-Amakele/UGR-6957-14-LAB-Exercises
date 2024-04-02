import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI CALCULATOR')),
          backgroundColor: Colors.purple,
        ),
        backgroundColor: Colors.blue,
        body: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    color: Colors.grey,
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(Icons.male, size: 80.0),
                        Text('Male'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    color: Colors.grey,
                    padding: EdgeInsets.all(10.0),
                    child: const Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 80.0,
                        ),
                        Text('Female'),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                color: Colors.grey,
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text('Height'),
                    Text("176"),
                    Slider(
                      value: 0.5,
                      onChanged: (double value) {},
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    color: Colors.grey,
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text('Weight'),
                        Text("60"),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                // Minus button action
                              },
                              iconSize: 30.0,
                              color: Colors.black,
                            ),
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                // Plus button action
                              },
                              iconSize: 30.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    color: Colors.grey,
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text('Height'),
                        Text('23'),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {},
                              iconSize: 30.0,
                              color: Colors.black,
                            ),
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {},
                              iconSize: 30.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                color: Colors.purple,
                padding: EdgeInsets.all(10.0),
                child: Center(child: Text('CALCULATE')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
