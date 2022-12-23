import 'package:flutter/material.dart';

class UserWidgetWeather extends StatelessWidget {
  const UserWidgetWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: const Center(
        child: Text("weather"),
      ),
    );
  }
}
