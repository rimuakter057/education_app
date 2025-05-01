import 'dart:convert';

import 'package:http/http.dart';
import 'package:logger/logger.dart';

class NetworkResponse {
  int statusCode;
  bool isSuccess;
  String? errorMessage;
  Map<String, dynamic>? responseData;

  NetworkResponse({
    required this.statusCode,
    required this.isSuccess,
    this.errorMessage,
    this.responseData,
  });
}

class NetworkCaller {

static  Future<NetworkResponse> getRequest(String url) async {
  var logger = Logger();
    Uri uri = Uri.parse(url);
    logger.i(uri);
    try {
      Response response = await get(uri);
      if (response.statusCode == 200) {
        final decodedResponse = jsonDecode(response.body);
        logger.i(decodedResponse);
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: true,
          responseData: decodedResponse,
        );
      } else {
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: false,
        );
      }
    } catch (e) {
      return NetworkResponse(
        statusCode: -1,
        isSuccess: false,
        errorMessage: e.toString(),
      );
    }
  }
}
