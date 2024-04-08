import 'package:flutter/material.dart';
import './screenTwo.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Screen One")),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Next"),
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const ScreenTwo()),
            );

            if (result == 'Yes') {
              // Handle the result if 'Yes' is returned
            }
          },
        ),
      ),
    );
  }
}
