import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarLeadingImage extends StatefulWidget {
  const AppbarLeadingImage({Key? key,})
      : super(
          key: key,
        );

  @override
  State<AppbarLeadingImage> createState() => _AppbarLeadingImageState();
}

class _AppbarLeadingImageState extends State<AppbarLeadingImage> {

  String? imagePath;
  EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
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
