import 'dart:convert';
import 'dart:html';

import 'package:drawer_app/components/dialog.dart';
import 'package:drawer_app/components/show_dialog.dart';
import 'package:drawer_app/services/http_services.dart';
import 'package:flutter/material.dart';

class FetchData extends StatefulWidget {
  const FetchData({Key? key}) : super(key: key);

  @override
  State<FetchData> createState() => _FetchDataState();
}

class _FetchDataState extends State<FetchData> {
  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data != null
          ? Text(data["province"])
          : const Center(child: Loading()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => postData(context: context),
        backgroundColor: Colors.green,
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Future<dynamic> fetchData({required BuildContext context}) async {
    var response = await HttpServices.luffyService(
            params: HTTPMETHOD.GET,
            url: 'http://192.168.237.1:3000/test',
            context: context)
        .whenComplete(() => {
              Future.delayed(Duration(seconds: 2), () => Navigator.pop(context))
            });

    if (response != 'error') {
      var responseJson = json.decode(response.body);
      data = responseJson;
      setState(() {});
      print(responseJson);
    }
  }

  Future<dynamic> postData({required BuildContext context}) async {
    var response = await HttpServices.luffyService(
            params: HTTPMETHOD.POST,
            url: 'http://192.168.237.1:3000/test',
            body: json.encode({"data": "Hello world"}),
            context: context)
        .whenComplete(() => {Navigator.pop(context)});

    if (response != 'error') {
      var responseJson = json.decode(response.body);
      data = responseJson;
      setState(() {});
      print(responseJson);
    }
    showAlertDialogLoading(context: context, subtitle: Text(response));
  }
}
