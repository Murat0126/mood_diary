import 'package:flutter/material.dart';
import '../../core/app_export.dart';

import '../../models/project.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

import 'widgets/emotionchips_item_widget.dart';
import 'widgets/emotionlist_item_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key})
      : super(
          key: key,
        );

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage>
    with AutomaticKeepAliveClientMixin<MainPage> {
  double _selfEsteemSliderValue = 50.0;
  double _stressLevelSliderValue = 50.0;
  TextEditingController editCommentController = TextEditingController();

  @override
  bool get wantKeepAlive => false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          // width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Что чувствуешь?",
                          style: CustomTextStyle.titleMediumExtraBold,
                        ),
                        const SizedBox(height: 13),
                        _buildEmotionList(context),
                        const SizedBox(height: 20),
                        _buildEmotionChips(context),
                        const SizedBox(height: 31),
                        _buildStressLevelSection(context),
                        const SizedBox(height: 31),
                        _buildSelfEsteemSection(context),
                        const SizedBox(height: 30),
                        _buildNotesSection(context),
                        const SizedBox(height: 16),
                        CustomElevatedButton(
                          text: "Сохранить",
                          margin: const EdgeInsets.only(right: 20),
                          buttonStyle: CustomButtonStyle.fillPrimary,
                          buttonTextStyle: CustomTextStyle.titleLargeWhite_700,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmotionChips(BuildContext context) {

    List<Project> emotionTitles = [
      Project(title: "Возбуждение"),
      Project(title: "Восторг"),
      Project(title: "Игривость"),
      Project(title: "Наслаждение"),
      Project(title: "Очарование"),
      Project(title: "Осознанность"),
      Project(title: "Смелость"),
      Project(title: "Удовольствие"),
      Project(title: "Чувственность"),
      Project(title: "Энергичность"),
      Project(title: "Экстравагантность"),
    ];

    return Wrap(
      runSpacing: 8,
      spacing: 8,
      children:
          List<Widget>.generate(emotionTitles.length, (index) => EmotionchipsItemWidget(emotionTitles: emotionTitles[index].title,)),
    );
  }

  Widget _buildEmotionList(BuildContext context) {
    return SizedBox(
      height: 118,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 12,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return const EmotionlistItemWidget();
        },
      ),
    );
  }

  Widget _buildStressLevelSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Уровень стресса",
          style: CustomTextStyle.titleMediumExtraBold,
        ),
        const SizedBox(height: 13),
        Container(
          margin: const EdgeInsets.only(right: 20),
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 15,
          ),
          decoration: AppDecoration.outlineDeepPurple2001C.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder13,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.sliderDividerIcon,
                height: 8,
                width: 317,
              ),
              const SizedBox(height: 2),
              SizedBox(
                height: 18,
                width: 380,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SliderTheme(
                      data: SliderThemeData(
                        trackShape: const RoundedRectSliderTrackShape(),
                        activeTrackColor: theme.colorScheme.primary,
                        inactiveTrackColor:
                            theme.colorScheme.onPrimaryContainer,
                        thumbColor: appTheme.white700,
                        thumbShape: const RoundSliderThumbShape(),
                      ),
                      child: Slider(
                        value: _stressLevelSliderValue,
                        min: 0.0,
                        max: 100.0,
                        label: _stressLevelSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _stressLevelSliderValue = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1),
              _buildSelfEsteemRow(
                context,
                prop: "Низкий",
                prop1: "Высокий",
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSelfEsteemSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Самооценка",
        style: CustomTextStyle.titleMediumExtraBold,
      ),
      const SizedBox(height: 13),
      Container(
          margin: const EdgeInsets.only(right: 20),
          padding: const EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 14,
          ),
          decoration: AppDecoration.outlineDeepPurple2001C.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder13,
          ),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.sliderDividerIcon,
                  height: 8,
                  width: 317,
                ),
                const SizedBox(height: 2),
                SizedBox(
                  height: 18,
                  width: 380,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SliderTheme(
                        data: SliderThemeData(
                          trackShape: const RoundedRectSliderTrackShape(),
                          activeTrackColor: theme.colorScheme.primary,
                          inactiveTrackColor:
                              theme.colorScheme.onPrimaryContainer,
                          thumbColor: appTheme.white700,
                          thumbShape: const RoundSliderThumbShape(),
                        ),
                        child: Slider(
                          value: _selfEsteemSliderValue,
                          min: 0.0,
                          max: 100.0,
                          label: _selfEsteemSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _selfEsteemSliderValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                _buildSelfEsteemRow(
                  context,
                  prop: "Неуверенность",
                  prop1: "Уверенность",
                )
              ]))
    ]);
  }

  Widget _buildNotesSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Заметки",
          style: CustomTextStyle.titleMediumExtraBold,
        ),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CustomTextFormField(
            controller: editCommentController,
            hintText: "Сегодня я чувствую себя хорошо|",
            textInputAction: TextInputAction.done,
            maxLines: 4,
          ),
        )
      ],
    );
  }

  Widget _buildSelfEsteemRow(
    BuildContext context, {
    required String prop,
    required String prop1,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          prop,
          style: CustomTextStyle.bodySmallBlueGray300.copyWith(
            color: appTheme.blueGrey300,
          ),
        ),
        Text(
          prop1,
          style: CustomTextStyle.bodySmallBlueGray300.copyWith(
            color: appTheme.blueGrey300,
          ),
        ),
      ],
    );
  }
}
