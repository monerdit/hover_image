import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hover_images/extensions/hover_extension.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hovering on Images',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Hover on Images'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Image(
                        width: 300,
                        height: 400,
                        image: AssetImage('/images/2.jpg')),
                    Text(
                      "Image 1",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.brown),
                    ),
                  ]).moveUpOnHover,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Image(
                        width: 300,
                        height: 400,
                        image: AssetImage('/images/3.jpg')),
                    Text(
                      "Image 2",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.brown),
                    ),
                  ]).moveUpOnHover,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                color: Colors.brown,
              ),
            )
          ],
        ),
      ),
    );
  }
}
