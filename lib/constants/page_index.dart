import 'package:flutter/material.dart';
import 'package:home_trigger/screens/status.dart';
import 'package:home_trigger/screens/trigger.dart';

import '../screens/home.dart';

enum PageIndex {
  home,
  status,
  trigger,
}

extension PageIndexExt on PageIndex {
  String get label {
    switch (this) {
      case PageIndex.home:
        return "Home";
      case PageIndex.status:
        return "Status";
      case PageIndex.trigger:
        return "Trigger";
    }
  }

  Icon get icon {
    switch (this) {
      case PageIndex.home:
        return const Icon(Icons.home);
      case PageIndex.status:
        return const Icon(Icons.insert_chart);
      case PageIndex.trigger:
        return const Icon(Icons.auto_fix_high);
    }
  }

  Widget get widget {
    switch (this) {
      case PageIndex.home:
        return const HomeScreen();
      case PageIndex.status:
        return const StatusScreen();
      case PageIndex.trigger:
        return const TriggerScreen();
    }
  }

// PageIndex get fromValue(val) {
//   return PageIndex.
// }
}
