// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StepState _$$_StepStateFromJson(Map<String, dynamic> json) => _$_StepState(
      steps: (json['steps'] as List<dynamic>)
          .map((e) => StepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isLoading: json['isLoading'] as bool,
      selectedResult: json['selectedResult'] as String,
      currentIndex: json['currentIndex'] as int,
      isLastPage: json['isLastPage'] as bool,
    );

Map<String, dynamic> _$$_StepStateToJson(_$_StepState instance) =>
    <String, dynamic>{
      'steps': instance.steps,
      'isLoading': instance.isLoading,
      'selectedResult': instance.selectedResult,
      'currentIndex': instance.currentIndex,
      'isLastPage': instance.isLastPage,
    };
