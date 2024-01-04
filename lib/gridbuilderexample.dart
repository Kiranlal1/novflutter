import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridbuilder(),
    debugShowCheckedModeBanner: false,
  ));
}

class Gridbuilder extends StatelessWidget {
  var icons = [
    Icons.home,
    Icons.email,
    Icons.alarm,
    Icons.wallet,
    Icons.backup,
    Icons.book,
    Icons.camera,
    Icons.person,
    Icons.print,
    Icons.phone,
    Icons.notes,
    Icons.music_note
  ];
  var name = [
    "Home",
    "Email",
    "Alarm",
    "Wallet",
    "Backup",
    "Book",
    "Camera",
    "Person",
    "Print",
    "Phone",
    "Notes",
    "Music"
  ];
  var colors = [
    Colors.green,
    Colors.grey,
    Colors.brown,
    Colors.red,
    Colors.yellowAccent,
    Colors.lightGreen,
    Colors.purple,
    Colors.deepOrangeAccent,
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.blueGrey,
    Colors.deepPurpleAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(//Icon(Icons.arrow_left),
        title: Text("Grid View"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            color: colors[index],
            child: Column(
              children: [
                Icon(icons[index]),
                Text("${name[index]}"),
              ],
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
