import 'package:flutter/material.dart';
import 'package:home_trigger/utils/page_builder.dart';

class WrapperScreen extends StatefulWidget {
  const WrapperScreen({super.key});

  @override
  State<WrapperScreen> createState() => _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  int _pageIndex = 0;

  void _setPageIndex(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Trigger"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Page index:',
            ),
            Text(
              '$_pageIndex',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: pageBuilder(),
        currentIndex: _pageIndex,
        selectedItemColor: Colors.deepOrange,
        onTap: _setPageIndex,
      ),
    );
  }
}
