import 'package:flutter/material.dart';

class UserWidgetTemp extends StatelessWidget {
  final String room;

  const UserWidgetTemp({super.key, required this.room});

  int _getTemp() {
    // TODO(me): get temp from somewhere
    return 20;
  }

  @override
  Widget build(BuildContext context) {
    return Text("$room temp: ${_getTemp()}");
  }
}
