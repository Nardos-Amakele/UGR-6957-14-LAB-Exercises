import 'package:flutter/material.dart';
import './ScreenY.dart';

class ScreenX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen X"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("Next"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ScreenY(),
                      settings: const RouteSettings(
                          arguments: "Some data from screenX")));
            }),
      ),
    );
  }
}
