import 'package:flutter/material.dart';

class PestAndDiseases extends StatefulWidget {
  const PestAndDiseases({super.key});

  @override
  State<PestAndDiseases> createState() => _PestAndDiseasesState();
}

class _PestAndDiseasesState extends State<PestAndDiseases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pest And Diseases'),
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
                title: Text('common pests'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('common diseases'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
