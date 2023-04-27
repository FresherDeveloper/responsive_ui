// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppData _$AppDataFromJson(Map<String, dynamic> json) => AppData(
      portfolioDetail: json['portfolioDetail'] as String?,
      headerList: (json['headerList'] as List<dynamic>?)
          ?.map((e) => HeaderList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppDataToJson(AppData instance) => <String, dynamic>{
      'portfolioDetail': instance.portfolioDetail,
      'headerList': instance.headerList,
    };

HeaderList _$HeaderListFromJson(Map<String, dynamic> json) => HeaderList(
      text1: json['text1'] as String?,
      color: json['color'] as String?,
      text2: json['text2'] as String?,
      textColor: json['textColor'] as String?,
    );

Map<String, dynamic> _$HeaderListToJson(HeaderList instance) =>
    <String, dynamic>{
      'text1': instance.text1,
      'color': instance.color,
      'text2': instance.text2,
      'textColor': instance.textColor,
    };
