import 'package:flutter/material.dart';

class Static2Screen extends StatelessWidget {
  const Static2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Static Bottom Sheet 2'),
      ),
      body: const Center(child: Text('Content')),
      bottomSheet: Container(
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
      ),
    );
  }
}
