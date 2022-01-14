import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:steam_key_app/file_management/steam_store_data.dart';
import 'package:steam_key_app/controllers/apps_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:steam_key_app/widgets/app_tile.dart';

class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  final AppsController appController = Get.put(AppsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "ShopMe",
                    style: TextStyle(
                        fontFamily: "avenir",
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(
              () {
                if (appController.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else
                  // ignore: curly_braces_in_flow_control_structures
                  return AlignedGridView.count(
                    crossAxisCount: 2,
                    itemCount: appController.appList.length,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    itemBuilder: (context, index) {
                      return AppTile(appController.appList[index]);
                    },
                  );
              },
            ),
          ),
        ],
      ),
    );
  }
}
