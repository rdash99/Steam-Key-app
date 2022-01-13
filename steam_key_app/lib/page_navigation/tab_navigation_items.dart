import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:steam_key_app/pages/home_page.dart';
import 'package:steam_key_app/pages/image_page.dart';

class TabNavigationItem {
  final Widget page;
  final String title;
  final Icon icon;

  TabNavigationItem({
    required this.page,
    required this.title,
    required this.icon,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
            page: HomeRoute(),
            title: "Home",
            icon: Icon(Icons.home, color: Colors.black)),
        TabNavigationItem(
            page: ImageRoute(),
            title: "Image",
            icon: Icon(Icons.image, color: Colors.black)),
      ];
}
