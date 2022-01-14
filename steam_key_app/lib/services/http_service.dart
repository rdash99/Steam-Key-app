import 'package:http/http.dart' as http;
import 'package:steam_key_app/models/app_model.dart';

class HttpService {
  static Future<AppModel> fetchApps() async {
    var response = await http.get(Uri.parse(
        "http://api.steampowered.com/ISteamApps/GetAppList/v2/?key=012082EA1C6D03579770F77C1722504D"));
    if (response.statusCode == 200) {
      var data = response.body;
      return appModelFromJson(data);
    } else {
      throw Exception();
    }
  }
}
