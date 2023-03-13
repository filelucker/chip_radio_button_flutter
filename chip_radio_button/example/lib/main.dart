import 'package:chip_radio_button/chip_radio_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Chips Demo"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        height: double.infinity,
        child: ChipsFilter(
          selected: 1, // Select the second filter as default
          filters: [
            Filter(label: "A - Z", icon: Icons.assessment),
            Filter(label: "H - L", icon: Icons.ac_unit),
            Filter(label: "Reverse", icon: Icons.all_inclusive),
            Filter(label: "A - Z", icon: Icons.assessment),
            Filter(label: "H - L", icon: Icons.ac_unit),
            Filter(label: "Reverse", icon: Icons.all_inclusive),
          ],
          onTap: (index) {
            print('Index ' + index.toString());
          },
        ),
      ),
    );
  }
}

