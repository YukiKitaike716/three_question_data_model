import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:three_question_data_model/model/entities/question.dart';

class QuestionPage extends ConsumerWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final overallEvaluation =
    //     ref.watch(_viewModel.select((value) => value.overallEvaluation));
    const overallEvaluation = OverallEvaluation.good;

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Three Questions Demo'),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Gap(16),
                Wrap(
                  spacing: 16,
                  runSpacing: 8,
                  children: const [
                    _OverallEvaluationButton(
                      selectedOverallEvaluation: overallEvaluation,
                      buttonOverallEvaluation: OverallEvaluation.good,
                    ),
                    Gap(32),
                    _OverallEvaluationButton(
                      selectedOverallEvaluation: overallEvaluation,
                      buttonOverallEvaluation: OverallEvaluation.bad,
                    ),
                  ],
                ),
                overallEvaluation == OverallEvaluation.none
                    ? const SizedBox.shrink()
                    : const _SecondHalfContent(),
                const Gap(16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SecondHalfContent extends ConsumerWidget {
  const _SecondHalfContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final questions = ref.watch(_viewModel.select((value) => value.questions));

    // final overallEvaluation =
    //     ref.watch(_viewModel.select((value) => value.overallEvaluation));

    // final isEnabledButton =
    //     ref.watch(_viewModel.select((value) => value.isEnabledButton));

    const overallEvaluation = OverallEvaluation.good;

    final questions = <String>['test', 'test2'];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Gap(16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Text(
            overallEvaluation.buttonLabel,
          ),
        ),
        const Gap(4),
        const Gap(4),
        for (final question in questions)
          _DetailQuestionCheckBox(
            selectedOverallEvaluation: overallEvaluation,
            question: question,
          ),
      ],
    );
  }
}

class _DetailQuestionCheckBox extends ConsumerWidget {
  const _DetailQuestionCheckBox({
    required this.selectedOverallEvaluation,
    required this.question,
  });

  final OverallEvaluation selectedOverallEvaluation;
  //final FoodDeliveryEvaluateData question;
  final String question;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // return question.map(
    //     overallQuestion: (OverallQuestion value) => const SizedBox.shrink(),
    //     freeTextQuestion: (FreeTextQuestion value) => const SizedBox.shrink(),
    //     detailQuestion: (DetailQuestion value) {
    //       final questionId = value.questionId;
    //       return value.overallEvaluation == selectedOverallEvaluation
    //           ? CheckboxListTile(
    //               dense: true,
    //               title: Text(
    //                 value.questionStatement,
    //                 style: PickGoText.style18,
    //               ),
    //               controlAffinity: ListTileControlAffinity.leading,
    //               value: value.checked,
    //               onChanged: (_) =>
    //                   ref.read(_viewModel).onTapCheckBox(questionId),
    //             )
    //           : const SizedBox.shrink();
    //     });
    // ignore: avoid_returning_null_for_void
    return CheckboxListTile(value: false, onChanged: (_) => null);
  }
}

class _OverallEvaluationButton extends ConsumerWidget {
  const _OverallEvaluationButton({
    required this.selectedOverallEvaluation,
    required this.buttonOverallEvaluation,
  });

  final OverallEvaluation selectedOverallEvaluation;
  final OverallEvaluation buttonOverallEvaluation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      // ignore: avoid_returning_null_for_void
      onTap: () => null,
      // ignore: use_decorated_box
      child: Container(
        decoration: BoxDecoration(
          color: selectedOverallEvaluation == buttonOverallEvaluation
              ? Colors.lightBlue.shade100
              : Colors.white,
          border: Border.all(color: Colors.blue, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 16, left: 32, right: 32, bottom: 8),
          child: Column(
            children: [
              buttonOverallEvaluation.buttonImage ?? SizedBox.shrink(),
              const Gap(8),
              Text(
                buttonOverallEvaluation.name,
              )
            ],
          ),
        ),
      ),
    );
  }
}
