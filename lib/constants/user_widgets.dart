import '../widgets/widgets.dart';

enum UserWidgets {
  // status widgets
  time, // dev test
  weather,

  // trigger widgets
}

extension UserWidgetsExt on UserWidgets {
  UserWidgetWrapper get widget {
    switch (this) {
      // status widgets
      case UserWidgets.time:
        return const UserWidgetWrapper(
          devOnly: false,
          width: 2,
          height: 2,
          child: UserWidgetTime(),
        );
      case UserWidgets.weather:
        return const UserWidgetWrapper(
          devOnly: false,
          width: 2,
          height: 2,
          child: UserWidgetWeather(),
        );
    }
  }
}
