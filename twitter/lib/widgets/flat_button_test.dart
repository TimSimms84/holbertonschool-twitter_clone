import 'package:flutter/material.dart';
import 'package:twitter/widgets/flat_button.dart';

void main() {
  runApp(const MaterialApp(home: CustomFlatButtonTest()));
}

class CustomFlatButtonTest extends StatelessWidget {
  const CustomFlatButtonTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomFlatButton(
            label: 'Submit',
            // ignore: avoid_print
            onPressed: () => print('Button Pressed!'),
          ),
        ),
      ),
    );
  }
}
