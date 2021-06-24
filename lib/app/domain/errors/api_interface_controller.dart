import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_local/app/domain/errors/app_errors.dart';

class ApiInterfaceController extends GetxController {
  // Variable
  final Rx<AppErrors?> _error = Rx<AppErrors?>(null);
  final Rx<VoidCallback?> _retry = Rx<VoidCallback?>(null);

  // Getter Setter
  AppErrors? get error => _error.value;
  set error(AppErrors? errors) => this._error.value = errors;
  VoidCallback? get retry => this._retry.value;
  set retry(VoidCallback? retry) => this._retry.value = retry;

}
