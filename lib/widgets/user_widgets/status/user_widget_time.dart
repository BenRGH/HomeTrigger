import 'package:flutter/material.dart';

class UserWidgetTime extends StatelessWidget {
  const UserWidgetTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: const Center(
        child: Text("time"),
      ),
    );
  }
}
