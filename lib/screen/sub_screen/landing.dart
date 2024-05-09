import 'package:flutter/material.dart';
import 'package:info_plant/screen/sub_screen/Uses.dart';
import 'package:info_plant/screen/sub_screen/storage.dart';

import 'Cultivatiion.dart';
import 'Harvesting.dart';
import 'PestAndDiseases.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Crop'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Help'),
              onTap: () {
                // Add your logic here
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Add your logic here
              },
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image with text to the left
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images.jpg',
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8), // Add space between image and text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TOMATO',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'this is tomato',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Description Card
          Card(
            child: ListTile(
              title: Text('Description'),
            ),
          ),
          // Other Content Cards
          Expanded(
            child: ListView(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cultivation()),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text('Cultivation'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PestAndDiseases()),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text('Pest and Diseases'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Harvesting()),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text('Harvesting'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Storage()),
                      );
                    },
                    child: ListTile(
                      title: Text('Storage'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Uses()),
                      );
                    },
                    child: ListTile(
                      trailing: Icon(Icons.arrow_forward_ios),
                      title: Text('Uses'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
