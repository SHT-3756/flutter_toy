// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultList _$$_ResultListFromJson(Map<String, dynamic> json) =>
    _$_ResultList(
      resultList: (json['resultList'] as List<dynamic>)
          .map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResultListToJson(_$_ResultList instance) =>
    <String, dynamic>{
      'resultList': instance.resultList,
    };
