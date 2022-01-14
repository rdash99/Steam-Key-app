import 'package:get/get.dart';
import 'package:steam_key_app/services/http_service.dart';

class AppsController extends GetxController {
  var isLoading = true.obs;
  var appList = [].obs;

  @override
  void onInit() {
    fetchApps();
    super.onInit();
  }

  void fetchApps() async {
    try {
      isLoading(true);
      var apps = await HttpService.fetchApps();
      if (apps != null) {
        appList.value = apps as List;
      }
    } finally {
      isLoading(false);
    }
  }
}
