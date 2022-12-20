// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OverallQuestion _$$OverallQuestionFromJson(Map<String, dynamic> json) =>
    _$OverallQuestion(
      json['questionId'] as int,
      $enumDecode(_$OverallEvaluationEnumMap, json['overallEvaluation']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OverallQuestionToJson(_$OverallQuestion instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'overallEvaluation':
          _$OverallEvaluationEnumMap[instance.overallEvaluation]!,
      'runtimeType': instance.$type,
    };

const _$OverallEvaluationEnumMap = {
  OverallEvaluation.good: 'good',
  OverallEvaluation.bad: 'bad',
  OverallEvaluation.none: 'none',
};

_$DetailQuestion _$$DetailQuestionFromJson(Map<String, dynamic> json) =>
    _$DetailQuestion(
      $enumDecode(_$OverallEvaluationEnumMap, json['overallEvaluation']),
      json['questionId'] as int,
      json['questionStatement'] as String,
      json['checked'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DetailQuestionToJson(_$DetailQuestion instance) =>
    <String, dynamic>{
      'overallEvaluation':
          _$OverallEvaluationEnumMap[instance.overallEvaluation]!,
      'questionId': instance.questionId,
      'questionStatement': instance.questionStatement,
      'checked': instance.checked,
      'runtimeType': instance.$type,
    };
