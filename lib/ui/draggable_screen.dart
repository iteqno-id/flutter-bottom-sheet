import 'package:bottom_sheet/widget/drag_handle.dart';
import 'package:flutter/material.dart';

class DraggableScreen extends StatelessWidget {
  const DraggableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Draggable Bottom Sheet'),
        ),
        body: Stack(
          children: [
            Image.network(
              'https://developers.google.com/maps/documentation/android-sdk/images/add-map-screenshot.png',
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            DraggableScrollableSheet(
              maxChildSize: 0.3,
              initialChildSize: 0.2,
              minChildSize: 0.1,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    height: (MediaQuery.of(context).size.height / 3) - 62,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      children: [
                        const DragHandle(),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Card(child: FlutterLogo(size: 100), elevation: 4),
                            Card(child: FlutterLogo(size: 100), elevation: 4),
                            Card(child: FlutterLogo(size: 100), elevation: 4),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}
