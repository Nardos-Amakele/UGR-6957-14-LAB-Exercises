import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Second Screen")),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Back"),
          onPressed: () {
            // Close the screen and return "Yes" as the result.
            Navigator.pop(context, 'Yes');
          },
        ),
      ),
    );
  }
}
