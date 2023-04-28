import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart' show rootBundle;
import 'package:responsive_ui/model/model.dart';

class AppService {
  Future<AppData> loadData() async {
    String jsonString = await rootBundle.loadString('assets/app_data.json');
    log("jsonString:$jsonString");
    Map<String, dynamic> data = jsonDecode(jsonString);
    log("data:$data");
    return AppData.fromJson(data);
  }
}
