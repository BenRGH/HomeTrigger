import 'package:flutter/material.dart';

import '../constants/constants.dart';

List<BottomNavigationBarItem> pageBuilder() {
  List<BottomNavigationBarItem> pages = [];

  for (var x in PageIndex.values) {
    pages.add(BottomNavigationBarItem(
      icon: PageIndexExt(x).icon,
      label: PageIndexExt(x).label,
    ));
  }

  return pages;
}
