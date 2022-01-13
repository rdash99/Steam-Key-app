import 'package:flutter/material.dart';
import 'package:steam_key_app/page_navigation/tabs_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Steam Key App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => TabsPage(),
      },
      initialRoute: "/",
    );
  }
}
