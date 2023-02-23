// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultState _$$_ResultStateFromJson(Map<String, dynamic> json) =>
    _$_ResultState(
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLoading: json['isLoading'] as bool,
    );

Map<String, dynamic> _$$_ResultStateToJson(_$_ResultState instance) =>
    <String, dynamic>{
      'results': instance.results,
      'isLoading': instance.isLoading,
    };
