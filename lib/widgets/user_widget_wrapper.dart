import 'package:flutter/material.dart';

// This class is meant to wrap each of the user widgets.
// We pair each of the children with an enum ID so that the ID's can be stored
// in an array for the home screen to build.

class UserWidgetWrapper extends StatefulWidget {
  final bool _pinned = false; // local tracking of pinned state
  final bool devOnly;
  final Widget child;
  final int width; // in tiles, 1-4 columns
  final int height; // in tiles, 1-8 rows

  const UserWidgetWrapper({
    super.key,
    required this.devOnly,
    required this.child,
    // TODO(me): gonna be a faff but we want these resizable
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
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      splashColor: Colors.blue,
      onLongPress: () {
        // TODO(me): show pinning dialog
      },
      child: Ink(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: -2,
              blurRadius: 7,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: widget.child,
        ),
      ),
    );
  }
}
