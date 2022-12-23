import 'package:flutter/material.dart';

class TriggerScreen extends StatelessWidget {
  const TriggerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("trigger"),
    );
  }
}

// TODO(me): this page is for trigger widgets, they'll have toggles and buttons
// and will send a message out thru the provider or something.
// Probably a good idea to make input disabled after sending an action until
// we have response.
// Widgets listed should be pinnable like status page, also grid why not.
