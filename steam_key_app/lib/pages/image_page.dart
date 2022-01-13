import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ImageRoute extends StatefulWidget {
  @override
  _ImageRouteState createState() => _ImageRouteState();
}

class _ImageRouteState extends State<ImageRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
      ),
      body: Center(
          child: Image.network(
              "https://cdn.akamai.steamstatic.com/steam/apps/588650/header.jpg")),
    );
  }
}
