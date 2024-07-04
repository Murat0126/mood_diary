part of 'task_bloc.dart';

abstract class SurvayEvent {}

class GetTaskEvent extends SurvayEvent {
  final int? taskId;
  final int? projectId;
  Function? onSuccess;

  GetTaskEvent({this.onSuccess, this.projectId, this.taskId});
}

class EmotionEvent extends SurvayEvent {
  final String? emotion;

  EmotionEvent({this.emotion});
}

class EmotionTitleEvent extends SurvayEvent {
  final String? emotionTitle;

  EmotionTitleEvent({this.emotionTitle});
}