import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;

final steamStoreData = Hive.box('steam_store_data');

start() {
  update_data();
}

Future update_data() async {
  var r = await http.get(Uri.parse(
      'http://api.steampowered.com/ISteamApps/GetAppList/v2/?key=012082EA1C6D03579770F77C1722504D'));
  var data = jsonDecode(r.body);
  add_data(data);
}

add_data(var data) {
  for (var i in data["applist"]["apps"].keys) {
    steamStoreData.put('$i', data["applist"]["apps"][i]);
    print(data["applist"]["apps"][i]);
  }
}

clear_data() async {
  await steamStoreData.clear();
}
