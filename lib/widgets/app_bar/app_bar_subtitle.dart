import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'package:intl/intl.dart';

class AppbarSubtitle extends StatefulWidget {
  const AppbarSubtitle({Key? key,})
      : super(
          key: key,
        );

  @override
  State<AppbarSubtitle> createState() => _AppbarSubtitleState();
}

class _AppbarSubtitleState extends State<AppbarSubtitle> {

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('d MMMM', 'ru').format(now);
    String formattedTime = DateFormat.Hm().format(now);

    return GestureDetector(
      onTap: () {
        // onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          "${formattedDate} ${formattedTime}",
          style: CustomTextStyle.titleMediumGray_400Bold1.copyWith(
            color: appTheme.gray400,
          ),
        ),
      ),
    );
  }
}
