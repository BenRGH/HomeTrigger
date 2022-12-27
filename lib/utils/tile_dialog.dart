import 'package:flutter/material.dart';

void showTileDialog(
  BuildContext context, {
  bool showResize = false,
  bool isPinned = false,
  void Function()? onResize,
  void Function()? onPin,
}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Tile Settings"),
      content: const Text("Pin or unpin tile on home screen, or resize tile."),
      actions: [
        // TODO(me): add resize functionality
        TextButton(
          onPressed: () {},
          child: isPinned ? const Text("Unpin") : const Text("Pin"),
        ),
        // TODO(me): add pinning functionality
        TextButton(
          onPressed: showResize ? () {} : null,
          child: const Text("Resize"),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Close"),
        ),
      ],
    ),
  );
}
