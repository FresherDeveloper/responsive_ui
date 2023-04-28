import 'package:json_annotation/json_annotation.dart';
part 'model.g.dart';

@JsonSerializable()
class AppData {
  String? portfolioDetail;
  List<HeaderList>? headerList;

  AppData({this.portfolioDetail, this.headerList});

  factory AppData.fromJson(Map<String, dynamic> json) =>
      _$AppDataFromJson(json);

  Map<String, dynamic> toJson() => _$AppDataToJson(this);
}

@JsonSerializable()
class HeaderList {
  String? text1;
  String? color;
  String? text2;
  String? textColor;

  HeaderList({this.text1, this.color, this.text2, this.textColor});

  factory HeaderList.fromJson(Map<String, dynamic> json) =>
      _$HeaderListFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderListToJson(this);
}
