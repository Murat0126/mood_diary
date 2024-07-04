import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class EmotionchipsItemWidget extends StatelessWidget {
  const EmotionchipsItemWidget({Key? key, required this.emotionTitles})
      : super(
          key: key,
        );
  final String emotionTitles;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      side: const BorderSide(color: Colors.white),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 2,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        emotionTitles,
        style: TextStyle(
          color: appTheme.blueGrey700,
          fontSize: 11,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.white700,
      shadowColor: appTheme.deepPurple2001c,
      elevation: 2,
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(8),
      ),
      onSelected: (value) {},
    );
  }
}
