import '../widgets/widgets.dart';

enum UserWidgets {
  // status widgets
  time, // dev test (add flag for dev widgets)

  // trigger widgets
}

extension UserWidgetsExt on UserWidgets {
  UserWidgetWrapper get widget {
    // TODO(me): put user widget class here
    switch (this) {
      case UserWidgets.time:
        return const UserWidgetWrapper(
          width: 3,
          height: 2,
          child: UserWidgetTime(),
        );
    }
  }
}
