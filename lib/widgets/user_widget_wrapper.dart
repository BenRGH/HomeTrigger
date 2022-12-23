import 'package:flutter/material.dart';

// This class is meant to wrap each of the user widgets.
// We pair each of the children with an enum ID so that the ID's can be stored
// in an array for the home screen to build.

class UserWidgetWrapper extends StatefulWidget {
  final bool _devOnly = false;
  final bool _pinned = false; // local tracking of pinned state
  final Widget child;
  final int width; // in tiles, 1-4 columns
  final int height; // in tiles, 1-8 rows

  const UserWidgetWrapper({
    super.key,
    required this.child,
    required this.width,
    required this.height,
  });

  @override
  _UserWidgetWrapperState createState() => _UserWidgetWrapperState();
}

class _UserWidgetWrapperState extends State<UserWidgetWrapper> {
  // This widget should serve as a wrapper, providing the outline, size
  // and pinning functionality. It should render the child widget inside
  // without overflow.

  @override
  Widget build(BuildContext context) {
    // TODO(me): styling and pinning
    return Center(
      child: widget.child,
    );
  }
}
