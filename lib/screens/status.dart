import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:home_trigger/constants/constants.dart';

const int GRID_COLUMNS = 4;

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  List<UserWidgets> _sortTiles(int maxColumns, List<UserWidgets> unsorted) {
    List<UserWidgets> sorted = List.from(unsorted);

    // Sort the tiles in ascending order of width
    sorted.sort((a, b) => a.widget.width.compareTo(b.widget.width));

    // Initialize the result list and a queue of rows
    List<UserWidgets> result = [];
    Queue<List<UserWidgets>> rows = Queue();

    // Iterate through the tiles
    for (UserWidgets tile in sorted) {
      // Try to find a row that has enough space for the tile
      bool placed = false;
      for (List<UserWidgets> row in rows) {
        int occupiedColumns =
            row.map((t) => t.widget.width).reduce((a, b) => a + b);
        if (occupiedColumns + tile.widget.width <= maxColumns) {
          // There is enough space, so add the tile to the row
          row.add(tile);
          placed = true;
          break;
        }
      }

      // If the tile couldn't be placed in an existing row, create a new row for it
      if (!placed) {
        rows.add([tile]);
      }
    }

    // Add the rows to the result list
    result.addAll(rows.expand((row) => row));

    return result;
  }

  List<Widget> _buildUserWidgets() {
    // Organise based on width size to fill all 4 columns
    // then map to StaggeredGridTile Widgets

    List<UserWidgets> sortedUserWidgets =
        _sortTiles(GRID_COLUMNS, UserWidgets.values);

    return sortedUserWidgets
        .map(
          (uw) => !uw.widget.devOnly
              ? StaggeredGridTile.count(
                  crossAxisCellCount: uw.widget.width,
                  mainAxisCellCount: uw.widget.height,
                  child: uw.widget,
                )
              : Container(),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: GRID_COLUMNS,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildUserWidgets(),
    );
  }
}

// TODO(me): this page is going to display data values gathered from the
// provider or wherever, the widgets should be pinnable to home.
// feel like this one could easily be a nice grid.
