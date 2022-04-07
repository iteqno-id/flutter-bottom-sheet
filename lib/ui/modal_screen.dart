import 'package:flutter/material.dart';

class ModalScreen extends StatelessWidget {
  const ModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Modal Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _buildModalBottomSheet(context);
          },
          child: const Text('Show Dialog'),
        ),
      ),
    );
  }

  _buildModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(12),
      )),
      context: context,
      builder: (_) => Container(
        padding: const EdgeInsets.all(16),
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Are you happy with this tutorial?'),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Yes'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Absolutely Yes'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
