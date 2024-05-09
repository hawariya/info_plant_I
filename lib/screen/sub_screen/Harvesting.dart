import 'package:flutter/material.dart';

class Harvesting extends StatefulWidget {
  const Harvesting({super.key});

  @override
  State<Harvesting> createState() => _HarvestingState();
}

class _HarvestingState extends State<Harvesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harvesting'),
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
                title: Text('Timing'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Signs Of Maturity'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Harvest method'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
