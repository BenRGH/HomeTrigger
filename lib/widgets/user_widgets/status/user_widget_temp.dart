import 'package:flutter/material.dart';

class UserWidgetTemp extends StatelessWidget {
  final String room;

  const UserWidgetTemp({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("temp in: $room"),
    );
  }
}
