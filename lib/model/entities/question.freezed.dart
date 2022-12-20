// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'overallQuestion':
      return OverallQuestion.fromJson(json);
    case 'detailQuestion':
      return DetailQuestion.fromJson(json);
    case 'freeTextQuestion':
      return FreeTextQuestion.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Question',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Question {
  int get questionId => throw _privateConstructorUsedError;
  OverallEvaluation get overallEvaluation => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int questionId, OverallEvaluation overallEvaluation)
        overallQuestion,
    required TResult Function(OverallEvaluation overallEvaluation,
            int questionId, String questionStatement, bool checked)
        detailQuestion,
    required TResult Function(
            OverallEvaluation overallEvaluation, int questionId, String text)
        freeTextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int questionId, OverallEvaluation overallEvaluation)?
        overallQuestion,
    TResult? Function(OverallEvaluation overallEvaluation, int questionId,
            String questionStatement, bool checked)?
        detailQuestion,
    TResult? Function(
            OverallEvaluation overallEvaluation, int questionId, String text)?
        freeTextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId, OverallEvaluation overallEvaluation)?
        overallQuestion,
    TResult Function(OverallEvaluation overallEvaluation, int questionId,
            String questionStatement, bool checked)?
        detailQuestion,
    TResult Function(
            OverallEvaluation overallEvaluation, int questionId, String text)?
        freeTextQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverallQuestion value) overallQuestion,
    required TResult Function(DetailQuestion value) detailQuestion,
    required TResult Function(FreeTextQuestion value) freeTextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverallQuestion value)? overallQuestion,
    TResult? Function(DetailQuestion value)? detailQuestion,
    TResult? Function(FreeTextQuestion value)? freeTextQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverallQuestion value)? overallQuestion,
    TResult Function(DetailQuestion value)? detailQuestion,
    TResult Function(FreeTextQuestion value)? freeTextQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call({int questionId, OverallEvaluation overallEvaluation});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? overallEvaluation = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      overallEvaluation: null == overallEvaluation
          ? _value.overallEvaluation
          : overallEvaluation // ignore: cast_nullable_to_non_nullable
              as OverallEvaluation,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OverallQuestionCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$OverallQuestionCopyWith(
          _$OverallQuestion value, $Res Function(_$OverallQuestion) then) =
      __$$OverallQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int questionId, OverallEvaluation overallEvaluation});
}

/// @nodoc
class __$$OverallQuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$OverallQuestion>
    implements _$$OverallQuestionCopyWith<$Res> {
  __$$OverallQuestionCopyWithImpl(
      _$OverallQuestion _value, $Res Function(_$OverallQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? overallEvaluation = null,
  }) {
    return _then(_$OverallQuestion(
      null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      null == overallEvaluation
          ? _value.overallEvaluation
          : overallEvaluation // ignore: cast_nullable_to_non_nullable
              as OverallEvaluation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OverallQuestion extends OverallQuestion {
  const _$OverallQuestion(this.questionId, this.overallEvaluation,
      {final String? $type})
      : $type = $type ?? 'overallQuestion',
        super._();

  factory _$OverallQuestion.fromJson(Map<String, dynamic> json) =>
      _$$OverallQuestionFromJson(json);

  @override
  final int questionId;
  @override
  final OverallEvaluation overallEvaluation;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Question.overallQuestion(questionId: $questionId, overallEvaluation: $overallEvaluation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverallQuestion &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.overallEvaluation, overallEvaluation) ||
                other.overallEvaluation == overallEvaluation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, overallEvaluation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OverallQuestionCopyWith<_$OverallQuestion> get copyWith =>
      __$$OverallQuestionCopyWithImpl<_$OverallQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int questionId, OverallEvaluation overallEvaluation)
        overallQuestion,
    required TResult Function(OverallEvaluation overallEvaluation,
            int questionId, String questionStatement, bool checked)
        detailQuestion,
    required TResult Function(
            OverallEvaluation overallEvaluation, int questionId, String text)
        freeTextQuestion,
  }) {
    return overallQuestion(questionId, overallEvaluation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int questionId, OverallEvaluation overallEvaluation)?
        overallQuestion,
    TResult? Function(OverallEvaluation overallEvaluation, int questionId,
            String questionStatement, bool checked)?
        detailQuestion,
    TResult? Function(
            OverallEvaluation overallEvaluation, int questionId, String text)?
        freeTextQuestion,
  }) {
    return overallQuestion?.call(questionId, overallEvaluation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId, OverallEvaluation overallEvaluation)?
        overallQuestion,
    TResult Function(OverallEvaluation overallEvaluation, int questionId,
            String questionStatement, bool checked)?
        detailQuestion,
    TResult Function(
            OverallEvaluation overallEvaluation, int questionId, String text)?
        freeTextQuestion,
    required TResult orElse(),
  }) {
    if (overallQuestion != null) {
      return overallQuestion(questionId, overallEvaluation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverallQuestion value) overallQuestion,
    required TResult Function(DetailQuestion value) detailQuestion,
    required TResult Function(FreeTextQuestion value) freeTextQuestion,
  }) {
    return overallQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverallQuestion value)? overallQuestion,
    TResult? Function(DetailQuestion value)? detailQuestion,
    TResult? Function(FreeTextQuestion value)? freeTextQuestion,
  }) {
    return overallQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverallQuestion value)? overallQuestion,
    TResult Function(DetailQuestion value)? detailQuestion,
    TResult Function(FreeTextQuestion value)? freeTextQuestion,
    required TResult orElse(),
  }) {
    if (overallQuestion != null) {
      return overallQuestion(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OverallQuestionToJson(
      this,
    );
  }
}

abstract class OverallQuestion extends Question {
  const factory OverallQuestion(
          final int questionId, final OverallEvaluation overallEvaluation) =
      _$OverallQuestion;
  const OverallQuestion._() : super._();

  factory OverallQuestion.fromJson(Map<String, dynamic> json) =
      _$OverallQuestion.fromJson;

  @override
  int get questionId;
  @override
  OverallEvaluation get overallEvaluation;
  @override
  @JsonKey(ignore: true)
  _$$OverallQuestionCopyWith<_$OverallQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailQuestionCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$DetailQuestionCopyWith(
          _$DetailQuestion value, $Res Function(_$DetailQuestion) then) =
      __$$DetailQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OverallEvaluation overallEvaluation,
      int questionId,
      String questionStatement,
      bool checked});
}

/// @nodoc
class __$$DetailQuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$DetailQuestion>
    implements _$$DetailQuestionCopyWith<$Res> {
  __$$DetailQuestionCopyWithImpl(
      _$DetailQuestion _value, $Res Function(_$DetailQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallEvaluation = null,
    Object? questionId = null,
    Object? questionStatement = null,
    Object? checked = null,
  }) {
    return _then(_$DetailQuestion(
      null == overallEvaluation
          ? _value.overallEvaluation
          : overallEvaluation // ignore: cast_nullable_to_non_nullable
              as OverallEvaluation,
      null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      null == questionStatement
          ? _value.questionStatement
          : questionStatement // ignore: cast_nullable_to_non_nullable
              as String,
      null == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailQuestion extends DetailQuestion {
  const _$DetailQuestion(this.overallEvaluation, this.questionId,
      this.questionStatement, this.checked,
      {final String? $type})
      : $type = $type ?? 'detailQuestion',
        super._();

  factory _$DetailQuestion.fromJson(Map<String, dynamic> json) =>
      _$$DetailQuestionFromJson(json);

  @override
  final OverallEvaluation overallEvaluation;
  @override
  final int questionId;
  @override
  final String questionStatement;
  @override
  final bool checked;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Question.detailQuestion(overallEvaluation: $overallEvaluation, questionId: $questionId, questionStatement: $questionStatement, checked: $checked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailQuestion &&
            (identical(other.overallEvaluation, overallEvaluation) ||
                other.overallEvaluation == overallEvaluation) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.questionStatement, questionStatement) ||
                other.questionStatement == questionStatement) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, overallEvaluation, questionId, questionStatement, checked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailQuestionCopyWith<_$DetailQuestion> get copyWith =>
      __$$DetailQuestionCopyWithImpl<_$DetailQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int questionId, OverallEvaluation overallEvaluation)
        overallQuestion,
    required TResult Function(OverallEvaluation overallEvaluation,
            int questionId, String questionStatement, bool checked)
        detailQuestion,
    required TResult Function(
            OverallEvaluation overallEvaluation, int questionId, String text)
        freeTextQuestion,
  }) {
    return detailQuestion(
        overallEvaluation, questionId, questionStatement, checked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int questionId, OverallEvaluation overallEvaluation)?
        overallQuestion,
    TResult? Function(OverallEvaluation overallEvaluation, int questionId,
            String questionStatement, bool checked)?
        detailQuestion,
    TResult? Function(
            OverallEvaluation overallEvaluation, int questionId, String text)?
        freeTextQuestion,
  }) {
    return detailQuestion?.call(
        overallEvaluation, questionId, questionStatement, checked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId, OverallEvaluation overallEvaluation)?
        overallQuestion,
    TResult Function(OverallEvaluation overallEvaluation, int questionId,
            String questionStatement, bool checked)?
        detailQuestion,
    TResult Function(
            OverallEvaluation overallEvaluation, int questionId, String text)?
        freeTextQuestion,
    required TResult orElse(),
  }) {
    if (detailQuestion != null) {
      return detailQuestion(
          overallEvaluation, questionId, questionStatement, checked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverallQuestion value) overallQuestion,
    required TResult Function(DetailQuestion value) detailQuestion,
    required TResult Function(FreeTextQuestion value) freeTextQuestion,
  }) {
    return detailQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverallQuestion value)? overallQuestion,
    TResult? Function(DetailQuestion value)? detailQuestion,
    TResult? Function(FreeTextQuestion value)? freeTextQuestion,
  }) {
    return detailQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverallQuestion value)? overallQuestion,
    TResult Function(DetailQuestion value)? detailQuestion,
    TResult Function(FreeTextQuestion value)? freeTextQuestion,
    required TResult orElse(),
  }) {
    if (detailQuestion != null) {
      return detailQuestion(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailQuestionToJson(
      this,
    );
  }
}

abstract class DetailQuestion extends Question {
  const factory DetailQuestion(
      final OverallEvaluation overallEvaluation,
      final int questionId,
      final String questionStatement,
      final bool checked) = _$DetailQuestion;
  const DetailQuestion._() : super._();

  factory DetailQuestion.fromJson(Map<String, dynamic> json) =
      _$DetailQuestion.fromJson;

  @override
  OverallEvaluation get overallEvaluation;
  @override
  int get questionId;
  String get questionStatement;
  bool get checked;
  @override
  @JsonKey(ignore: true)
  _$$DetailQuestionCopyWith<_$DetailQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FreeTextQuestionCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$FreeTextQuestionCopyWith(
          _$FreeTextQuestion value, $Res Function(_$FreeTextQuestion) then) =
      __$$FreeTextQuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OverallEvaluation overallEvaluation, int questionId, String text});
}

/// @nodoc
class __$$FreeTextQuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$FreeTextQuestion>
    implements _$$FreeTextQuestionCopyWith<$Res> {
  __$$FreeTextQuestionCopyWithImpl(
      _$FreeTextQuestion _value, $Res Function(_$FreeTextQuestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overallEvaluation = null,
    Object? questionId = null,
    Object? text = null,
  }) {
    return _then(_$FreeTextQuestion(
      null == overallEvaluation
          ? _value.overallEvaluation
          : overallEvaluation // ignore: cast_nullable_to_non_nullable
              as OverallEvaluation,
      null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeTextQuestion extends FreeTextQuestion {
  const _$FreeTextQuestion(this.overallEvaluation, this.questionId, this.text,
      {final String? $type})
      : $type = $type ?? 'freeTextQuestion',
        super._();

  factory _$FreeTextQuestion.fromJson(Map<String, dynamic> json) =>
      _$$FreeTextQuestionFromJson(json);

  @override
  final OverallEvaluation overallEvaluation;
  @override
  final int questionId;
  @override
  final String text;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Question.freeTextQuestion(overallEvaluation: $overallEvaluation, questionId: $questionId, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeTextQuestion &&
            (identical(other.overallEvaluation, overallEvaluation) ||
                other.overallEvaluation == overallEvaluation) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, overallEvaluation, questionId, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeTextQuestionCopyWith<_$FreeTextQuestion> get copyWith =>
      __$$FreeTextQuestionCopyWithImpl<_$FreeTextQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int questionId, OverallEvaluation overallEvaluation)
        overallQuestion,
    required TResult Function(OverallEvaluation overallEvaluation,
            int questionId, String questionStatement, bool checked)
        detailQuestion,
    required TResult Function(
            OverallEvaluation overallEvaluation, int questionId, String text)
        freeTextQuestion,
  }) {
    return freeTextQuestion(overallEvaluation, questionId, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int questionId, OverallEvaluation overallEvaluation)?
        overallQuestion,
    TResult? Function(OverallEvaluation overallEvaluation, int questionId,
            String questionStatement, bool checked)?
        detailQuestion,
    TResult? Function(
            OverallEvaluation overallEvaluation, int questionId, String text)?
        freeTextQuestion,
  }) {
    return freeTextQuestion?.call(overallEvaluation, questionId, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int questionId, OverallEvaluation overallEvaluation)?
        overallQuestion,
    TResult Function(OverallEvaluation overallEvaluation, int questionId,
            String questionStatement, bool checked)?
        detailQuestion,
    TResult Function(
            OverallEvaluation overallEvaluation, int questionId, String text)?
        freeTextQuestion,
    required TResult orElse(),
  }) {
    if (freeTextQuestion != null) {
      return freeTextQuestion(overallEvaluation, questionId, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OverallQuestion value) overallQuestion,
    required TResult Function(DetailQuestion value) detailQuestion,
    required TResult Function(FreeTextQuestion value) freeTextQuestion,
  }) {
    return freeTextQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OverallQuestion value)? overallQuestion,
    TResult? Function(DetailQuestion value)? detailQuestion,
    TResult? Function(FreeTextQuestion value)? freeTextQuestion,
  }) {
    return freeTextQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OverallQuestion value)? overallQuestion,
    TResult Function(DetailQuestion value)? detailQuestion,
    TResult Function(FreeTextQuestion value)? freeTextQuestion,
    required TResult orElse(),
  }) {
    if (freeTextQuestion != null) {
      return freeTextQuestion(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeTextQuestionToJson(
      this,
    );
  }
}

abstract class FreeTextQuestion extends Question {
  const factory FreeTextQuestion(final OverallEvaluation overallEvaluation,
      final int questionId, final String text) = _$FreeTextQuestion;
  const FreeTextQuestion._() : super._();

  factory FreeTextQuestion.fromJson(Map<String, dynamic> json) =
      _$FreeTextQuestion.fromJson;

  @override
  OverallEvaluation get overallEvaluation;
  @override
  int get questionId;
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$FreeTextQuestionCopyWith<_$FreeTextQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
