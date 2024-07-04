import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mood_diary_app/bloc/task/task_bloc.dart';
import 'package:mood_diary_app/presentation/main_page/main_page.dart';
import 'package:mood_diary_app/presentation/statistics_page/statistics_page.dart';
import 'package:mood_diary_app/widgets/app_bar/app_bar_subtitle.dart';
import 'package:mood_diary_app/widgets/app_bar/app_bar_trailing_image.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class TabContainerScreen extends StatefulWidget {
  const TabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TabContainerScreenState createState() => TabContainerScreenState();
}

class TabContainerScreenState extends State<TabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurveyBloc, SurveyState>(
        builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.white7001,
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 30,
                    width: 288,
                    decoration: BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor: appTheme.white700,
                      labelStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                      unselectedLabelColor: appTheme.gray400,
                      unselectedLabelStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      dividerHeight: 0.0,
                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 0,
                              vertical: 5,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder13,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.diaryIcon,
                                  height: 12,
                                  width: 12,
                                  margin: const EdgeInsets.symmetric(vertical: 3),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    left: 6,
                                    top: 1,
                                  ),
                                  child: Text(
                                    "Дневник настроения",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.statisticIcon,
                                height: 12,
                                width: 12,
                                margin: const EdgeInsets.symmetric(vertical: 2),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  "Статистика",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1000,
                    child: TabBarView(
                      controller: tabviewController,
                      children: const [MainPage(), StatisticsPage()],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return const CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitle(),
      actions: [
        AppbarTrailingImage(),
      ],
    );
  }
}
