import 'package:home_trigger/widgets/user_widgets/status/user_widget_temp.dart';

import '../widgets/widgets.dart';

enum UserWidgets {
  // status widgets
  time, // dev test
  weather,
  tempBedroom,
  tempOffice,
  tempKitchen,
  tempShed,

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
          width: 4,
          height: 1,
          child: UserWidgetWeather(),
        );
      case UserWidgets.tempBedroom:
      case UserWidgets.tempOffice:
      case UserWidgets.tempKitchen:
      case UserWidgets.tempShed:
        return const UserWidgetWrapper(
          devOnly: false,
          width: 1,
          height: 1,
          child: UserWidgetTemp(room: "bedroom idk"),
        );
    }
  }
}
