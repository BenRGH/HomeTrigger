import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

enum UserWidgets {
  // status widgets
  time, // dev test (add flag for dev widgets)

  // trigger widgets
}

extension UserWidgetsExt on UserWidgets {
  Widget get widget {
    // TODO(me): put user widget class here
    switch (this) {
      case UserWidgets.time:
        return const UserWidgetWrapper(
          width: 4,
          height: 1,
          child: UserWidgetTime(),
        );
    }
  }
}
