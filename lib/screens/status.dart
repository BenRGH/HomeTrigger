import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:home_trigger/constants/constants.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4, // num columns
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: UserWidgets.values
          .map(
            (uw) => StaggeredGridTile.count(
              crossAxisCellCount: uw.widget.width,
              mainAxisCellCount: uw.widget.height,
              child: uw.widget,
            ),
          )
          .toList(),
    );
  }
}

// TODO(me): this page is going to display data values gathered from the
// provider or wherever, the widgets should be pinnable to home.
// feel like this one could easily be a nice grid.
