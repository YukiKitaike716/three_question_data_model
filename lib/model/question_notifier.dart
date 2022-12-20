import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:three_question_data_model/model/entities/question.dart';

final overallEvaluationProvider = Provider<OverallEvaluation>(
  (ref) {
    return ref.watch(questionsProvider).first.overallEvaluation;
  },
);

final questionsProvider =
    StateNotifierProvider<QuestionNotifier, List<Question>>((ref) {
  return QuestionNotifier(ref: ref);
});

class QuestionNotifier extends StateNotifier<List<Question>> {
  QuestionNotifier({required this.ref})
      : super([
          const Question.overallQuestion(1, OverallEvaluation.good),
          const Question.detailQuestion(
              OverallEvaluation.good, 3, '楽しかった', false),
          const Question.detailQuestion(
              OverallEvaluation.good, 4, 'おいしかった', false),
          const Question.detailQuestion(
              OverallEvaluation.bad, 5, 'つまらなかった', false),
          const Question.detailQuestion(
              OverallEvaluation.bad, 6, 'まずかった', false),
        ]);

  final Ref ref;

  void updateOverallEvaluation(OverallEvaluation overallEvaluation) {
    state = state
        .map(
          (question) => question.map(
            overallQuestion: (OverallQuestion value) =>
                value.copyWith(overallEvaluation: overallEvaluation),
            detailQuestion: (DetailQuestion value) {
              return value.copyWith(checked: false);
            },
          ),
        )
        .toList();
  }

  void updateChecked(int questionId) {
    state = [
      for (final question in state)
        question.map(
          overallQuestion: (OverallQuestion value) => value,
          detailQuestion: (DetailQuestion value) {
            if (value.questionId == questionId) {
              return value.copyWith(checked: !value.checked);
            } else {
              return value;
            }
          },
        )
    ];
  }
}

final resultProvider = Provider<Iterable<String?>>((ref) {
  final questions = ref.watch(questionsProvider);
  final overallEvaluation = ref.watch(overallEvaluationProvider);
  final temp = questions
      .map(
        (question) => question.map(
          overallQuestion: (value) => value.overallEvaluation.name,
          detailQuestion: (value) {
            if (value.overallEvaluation == overallEvaluation) {
              return '${value.questionStatement} : ${value.checked}';
            }
          },
        ),
      )
      .whereNotNull()
      .toList();
  return temp;
});
