import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

class UserWidgetTime extends StatelessWidget {
  const UserWidgetTime({super.key});

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(
      const Duration(seconds: 5),
      builder: (context) {
        return SizedBox(
          height: 100,
          // width: 100,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              "${DateTime.now().hour}:${DateTime.now().minute}",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        );
      },
    );
  }
}
