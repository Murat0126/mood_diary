part of 'task_bloc.dart';

class SurveyState {
  final String? emotion;
  final String? emotionTitle;

  const SurveyState({
    this.emotion,
    this.emotionTitle,
  });

  SurveyState copyWith({
    String? emotion,
    String? emotionTitle,
  }) =>
      SurveyState(
        emotion: emotion ?? this.emotion,
        emotionTitle: emotionTitle ?? this.emotionTitle,
      );
}
