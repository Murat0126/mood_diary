import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarTrailingImage extends StatefulWidget {
  const AppbarTrailingImage({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<AppbarTrailingImage> createState() => _AppbarTrailingImageState();
}

class _AppbarTrailingImageState extends State<AppbarTrailingImage> {
  String? imagePath = ImageConstant.calendarIcon;
  EdgeInsetsGeometry? margin = const EdgeInsets.fromLTRB(20, 15, 20, 17);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 16,
          width: 16,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
