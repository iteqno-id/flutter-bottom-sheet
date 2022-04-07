import 'package:bottom_sheet/ui/builder_screen.dart';
import 'package:bottom_sheet/ui/draggable_screen.dart';
import 'package:bottom_sheet/ui/modal_screen.dart';
import 'package:bottom_sheet/ui/static2_screen.dart';
import 'package:bottom_sheet/ui/static_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const StaticScreen()));
              },
              child: const Text('Static Bottom Sheet 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const Static2Screen()));
              },
              child: const Text('Static Bottom Sheet 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const BuilderScreen()));
              },
              child: const Text('Bottom Sheet Builder'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const DraggableScreen()));
              },
              child: const Text('Draggable Bottom Sheet'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const ModalScreen()));
              },
              child: const Text('Modal Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
