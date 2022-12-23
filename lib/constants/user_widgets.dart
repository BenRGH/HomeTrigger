import 'package:flutter/material.dart';

enum UserWidgets {
  time, // dev test (add flag for dev widgets)
}

extension UserWidgetsExt on UserWidgets {
  Widget get widget {
    // TODO(me): put user widget class here
    switch (this) {
      case UserWidgets.time:
        return Container();
    }
  }
}
