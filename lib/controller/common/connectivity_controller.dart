import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectivityController extends GetxController {
  var connectivityStatus = Rx<ConnectivityStatus>(ConnectivityStatus.offline);

  late StreamSubscription<ConnectivityResult> subscription;

  @override
  void onInit() {
    super.onInit();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      var status = _getStatusFromResult(result);
      connectivityStatus.value = status;
    });
  }

  ConnectivityStatus _getStatusFromResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        return ConnectivityStatus.online;
      case ConnectivityResult.mobile:
        return ConnectivityStatus.online;
      case ConnectivityResult.none:
        return ConnectivityStatus.offline;
      default:
        return ConnectivityStatus.offline;
    }
  }

  @override
  void onClose() {
    subscription.cancel();
    super.onClose();
  }
}

enum ConnectivityStatus { online, offline }
