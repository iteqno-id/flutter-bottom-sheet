import 'package:flutter/material.dart';

class BuilderScreen extends StatelessWidget {
  const BuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Bottom Sheet Builder'),
      ),
      body: const Center(child: Text('Content')),
      bottomSheet: BottomSheet(
        backgroundColor: Colors.blueGrey,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Card(child: FlutterLogo(size: 100), elevation: 4),
                Card(child: FlutterLogo(size: 100), elevation: 4),
                Card(child: FlutterLogo(size: 100), elevation: 4),
              ],
            ),
          );
        },
        onClosing: () {},
      ),
    );
  }
}
