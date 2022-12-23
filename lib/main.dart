import 'package:flutter/material.dart';
import 'package:home_trigger/screens/wrapper.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Trigger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WrapperScreen(),
    );
  }
}
