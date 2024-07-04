import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtilBreakPoints{
  static initMobileDesignSize(BuildContext context){
    ScreenUtil.init(context, designSize: const Size(212, 870));
  }
  static initWebDesignSize(BuildContext context){
    ScreenUtil.init(context, designSize: const Size(600, 1024));
  }
  static initTabletDesignSize(BuildContext context){
    ScreenUtil.init(context, designSize: const Size(1366, 767));
  }
}