import 'package:get/get.dart';
import 'package:my_local/app/core/constants/constants.dart';
import 'package:my_local/app/core/utils/storage.dart';

import 'app_response.dart';

class ApiHelper extends GetConnect with AppResponse {
  @override
  void onInit() {
    httpClient.baseUrl = Constants.BASE_URL;
    httpClient.timeout = Constants.timeout;

    addRequestModifier();

    ///call this function after the login so that it will
    ///update the request modifier

    httpClient.addResponseModifier((request, response) {
      printInfo(
        info: 'Status Code: ${response.statusCode}\n'
            'Data: ${response.bodyString?.toString() ?? ''}',
      );

      return response;
    });
  }

  void addRequestModifier() {
    httpClient.addRequestModifier<dynamic>((request) {
      if (Storage.hasData(Constants.TOKEN)) {
        request.headers['Authorization'] = Storage.getValue(Constants.TOKEN);
      }

      printInfo(
        info: 'REQUEST ║ ${request.method.toUpperCase()}\n'
            'url: ${request.url}\n'
            'Headers: ${request.headers}\n'
            'Body: ${request.files?.toString() ?? ''}\n',
      );

      return request;
    });
  }

  Future<Response<dynamic>> getPosts() {
    return get('posts');
  }

}
