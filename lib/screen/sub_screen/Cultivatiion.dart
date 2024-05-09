import 'package:flutter/material.dart';

class Cultivation extends StatefulWidget {
  const Cultivation({super.key});

  @override
  State<Cultivation> createState() => _CultivationState();
}

class _CultivationState extends State<Cultivation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cultivation'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: ListTile(
                title: Text('Climate'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Soil'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Planting'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Fertilization'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
