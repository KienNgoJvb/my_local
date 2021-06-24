import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_local/app/core/constants/constants.dart';
import 'package:my_local/app/core/utils/utils.dart';
import 'package:my_local/app/domain/data/app_response.dart';
import 'package:my_local/app/domain/errors/app_errors.dart';
import 'package:my_local/app/domain/errors/api_interface_controller.dart';
import 'package:my_local/app/routes/app.dart';

class Extensions {}

extension FutureExt<T> on Future<Response<T>?> {
  void futureValue(
    Function(T value) response, {
    Function(String? error)? onError,
    VoidCallback? retryFunction,
  }) {
    final _interface = Get.find<ApiInterfaceController>();
    _interface.error = null;

    Utils.loadingDialog();

    this.then((value) {
      Utils.closeDialog();

      final result = AppResponse.getResponse(value!);
      response(result!);
    }).catchError((e) {
      final isAppError = e is AppErrors;
      final String errorMessage = isAppError ? e.message : e.toString();

      Utils.closeDialog();

      Utils.showDialog(
        errorMessage,
        onTap: errorMessage != UnauthorizeError().message
            ? null
            : () => Get.offAllNamed(AppPages.INITIAL),
      );

      if (onError != null) {
        onError(errorMessage);
      }

      if (e is NoConnectionError || e is TimeoutError) {
        _interface.error = e;

        if (retryFunction != null) {
          _interface.retry = retryFunction;
        }
      }

      printError(info: 'catchError: error: $e\nerrorMessage: $errorMessage');
    }).timeout(
      Constants.timeout,
      onTimeout: () {
        Utils.closeDialog();
        Utils.showSnackBar(TimeoutError().message);

        if (retryFunction != null) {
          _interface.retry = retryFunction;
        }
      },
    );
  }
}

extension DebugLog on String {
  void debugLog() {
    return debugPrint(
      '\n******************************* DebugLog *******************************\n'
      ' $this'
      '\n******************************* DebugLog *******************************\n',
      wrapWidth: 1024,
    );
  }
}
