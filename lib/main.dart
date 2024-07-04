import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mood_diary_app/bloc/task/task_bloc.dart';
import 'package:mood_diary_app/presentation/tap_container_screen/tap_container_screen.dart';
import 'core/app_export.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SurveyBloc(),
      child: ScreenUtilInit(
            designSize: const Size(412, 870),
            builder: (context, child) {
              return MaterialApp(
                title: 'mood_diary',
                theme: theme,
                debugShowCheckedModeBanner: false,
                initialRoute: AppRoutes.initialRoute,
                routes: AppRoutes.routes,
              );
            },
            child: BlocBuilder<SurveyBloc, SurveyState>(
                builder: (BuildContext context, SurveyState state) {
              return const TabContainerScreen();
            })
    ));
  }
}
