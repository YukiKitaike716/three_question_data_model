import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:three_question_data_model/pages/question_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theree Question Data Model',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuestionPage(),
    );
  }
}
