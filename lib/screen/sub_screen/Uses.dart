import 'package:flutter/material.dart';

class Uses extends StatefulWidget {
  const Uses({super.key});

  @override
  State<Uses> createState() => _UsesState();
}

class _UsesState extends State<Uses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uses'),
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
                title: Text('Food'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Animal Food'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Industrial'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
