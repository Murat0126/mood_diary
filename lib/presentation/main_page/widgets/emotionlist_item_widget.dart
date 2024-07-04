import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class EmotionlistItemWidget extends StatelessWidget {
  const EmotionlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 6),
          child: _buildFearColumn(
            context,
            userImage: ImageConstant.imgRectangleJoy,
            fearText: 'Радость',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 6),
          child: _buildFearColumn(
            context,
            userImage: ImageConstant.imgRectangleFear,
            fearText: 'Страх',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 6),
          child: _buildFearColumn(
            context,
            userImage: ImageConstant.imgRectangleRage,
            fearText: 'Бешенство',
          ),
        ),
          Padding(
          padding: EdgeInsets.only(right: 6),
          child: _buildFearColumn(
            context,
            userImage: ImageConstant.imgRectangleSadness,
            fearText: 'Грусть',
          ),
        ),
          Padding(
          padding: EdgeInsets.only(right: 6),
          child: _buildFearColumn(
            context,
            userImage: ImageConstant.imgRectangleCalm,
            fearText: 'Спокойствие',
          ),
        ),
          Padding(
          padding: EdgeInsets.only(right: 6),
          child: _buildFearColumn(
            context,
            userImage: ImageConstant.imgRectangleStrength,
            fearText: 'Сила',
          ),
        ),
      ],
    );
  }

  Widget _buildFearColumn(
    BuildContext context, {
    required String userImage,
    required String fearText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 23,
      ),
      decoration: AppDecoration.outlineDeepPurpleC.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder41,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 50,
            width: 53,
          ),
          SizedBox(height: 5),
          Text(
            fearText,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.blueGrey700,
            ),
          ),
        ],
      ),
    );
  }
}
