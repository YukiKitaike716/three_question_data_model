import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'question.freezed.dart';
part 'question.g.dart';

enum OverallEvaluation {
  good('Good'),
  bad('Bad'),
  none('None');

  const OverallEvaluation(this.name);
  final String name;

  String get buttonLabel => 'Why did you think it was $name?';

  Icon? get buttonImage {
    switch (this) {
      case good:
        return const Icon(Icons.upcoming);
      case bad:
        return const Icon(Icons.dangerous);
      case none:
        return null;
    }
  }
}

@freezed
class Question with _$Question {
  const factory Question.overallQuestion(
    int questionId,
    OverallEvaluation overallEvaluation,
  ) = OverallQuestion;

  const factory Question.detailQuestion(
    OverallEvaluation overallEvaluation,
    int questionId,
    String questionStatement,
    bool checked,
  ) = DetailQuestion;

  const Question._();

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
