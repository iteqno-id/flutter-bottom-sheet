import 'package:flutter/material.dart';

class StaticScreen extends StatelessWidget {
  const StaticScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Static Bottom Sheet'),
      ),
      body: Column(
        children: [
          const Spacer(),
          const Text('Content'),
          const Spacer(),
          Container(
            height: 200,
            decoration: const BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Card(child: FlutterLogo(size: 100), elevation: 4),
                Card(child: FlutterLogo(size: 100), elevation: 4),
                Card(child: FlutterLogo(size: 100), elevation: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
