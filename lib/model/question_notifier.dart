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
          const Question.overallQuestion(2, OverallEvaluation.bad),
          const Question.detailQuestion(
              OverallEvaluation.good, 3, '楽しかった', false),
          const Question.detailQuestion(
              OverallEvaluation.good, 4, 'おいしかった', false),
          const Question.detailQuestion(
              OverallEvaluation.bad, 5, 'つまらなかった', false),
          const Question.detailQuestion(
              OverallEvaluation.bad, 6, 'まずかった', false),
          const Question.freeTextQuestion(OverallEvaluation.good, 7, ''),
        ]);

  final Ref ref;

  void updateOverallEvaluation(OverallEvaluation overallEvaluation) {
    state = state
        .map(
          (question) => question.map(
            overallQuestion: (OverallQuestion value) =>
                value.copyWith(overallEvaluation: overallEvaluation),
            freeTextQuestion: (FreeTextQuestion value) => value,
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
          freeTextQuestion: (FreeTextQuestion value) => value,
        )
    ];
  }

  void updateComment(String comment) {
    state = [
      for (final question in state)
        question.map(
          overallQuestion: (OverallQuestion value) => value,
          detailQuestion: (DetailQuestion value) => value,
          freeTextQuestion: (FreeTextQuestion value) {
            return value.copyWith(text: comment);
          },
        )
    ];
  }
}
