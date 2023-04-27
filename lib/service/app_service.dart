import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:responsive_ui/model/model.dart';

class AppService {

  
  Future<AppData> loadData() async {
    print("called");
    String jsonString = await rootBundle.loadString('assets/app_data.json');
    print("jsonString:$jsonString");
    Map<String, dynamic> data = jsonDecode(jsonString);
    print("data:$data");
    return AppData.fromJson(data);
  }


}
