

import 'package:flutter_bloc/flutter_bloc.dart';

part 'task_state.dart';

part 'task_event.dart';

class SurveyBloc extends Bloc<SurvayEvent, SurveyState> {

  SurveyBloc() : super(const SurveyState()) {
    on<EmotionEvent>(initialEmotion);
    on<EmotionTitleEvent>(initialEmotionTitle);
  }

  Future<void> initialEmotion(
      EmotionEvent event, Emitter<SurveyState> emit) async {
    emit(state.copyWith(emotion: event.emotion));
  }
Future<void> initialEmotionTitle(
      EmotionTitleEvent event, Emitter<SurveyState> emit) async {
    emit(state.copyWith(emotionTitle: event.emotionTitle));
  }

}
