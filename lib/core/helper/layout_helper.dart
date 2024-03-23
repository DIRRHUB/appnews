import 'package:appnews/core/enums/display_type_enum.dart';
import 'package:appnews/shared/constants/size_constants.dart';
import 'package:flutter/material.dart';

class LayoutHelper {
  static DisplayType displayTypeOf(BuildContext context) {
    if (MediaQuery.of(context).size.width > SizeConstants.mediumPageBreakpoint) {
      return DisplayType.desktop;
    }
    return DisplayType.mobile;
  }

  static bool isDisplayDesktop(BuildContext context) {
    return displayTypeOf(context) == DisplayType.desktop;
  }

  static bool isDisplayMobile(BuildContext context) {
    return displayTypeOf(context) == DisplayType.mobile;
  }

  static bool isLarge(double width) {
    return width > SizeConstants.smallPageBreakpoint;
  }
}
