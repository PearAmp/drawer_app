import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:drawer_app/components/dialog.dart';

import '../components/show_dialog.dart';

enum HTTPMETHOD { GET, POST, PUT, DELETE }

var headers = {
  'Content-Type': 'application/json',
};

class HttpServices {
  static Future<dynamic> luffyService(
      {required HTTPMETHOD params,
      required String url,
      required BuildContext context,
      Object? body}) async {
    showAlertDialogLoading(context: context, subtitle: Loading());
    var uri = Uri.parse(url);
    try {
      switch (params) {
        case HTTPMETHOD.GET:
          print("GET");
          var response = await http.get(uri);
          if (response.statusCode != 200) {
            return 'error';
          }
          return response;
        case HTTPMETHOD.POST:
          var response = await http.post(uri, body: body, headers: headers);
          if (response.statusCode != 200) {
            return 'error';
          }
          return response;
        case HTTPMETHOD.PUT:
          print("PUT");
          return;
        case HTTPMETHOD.DELETE:
          print("DELETE");
          return;
      }
    } catch (e) {
      print(e.toString());
      return 'error';
    }
  }

  String returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 400:
        return '400 Bad Request';
      case 401:
        return '401 Unauthorized';
      case 403:
        return '403 Forbidden errors';
      case 500:
        return '500 Internal Server Error';
      default:
        return 'Error occured while Communication with Server with StatusCode : ${response.statusCode}';
    }
  }
}
