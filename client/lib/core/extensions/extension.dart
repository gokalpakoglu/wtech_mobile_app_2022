import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {

  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;
=======
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get lowValue => height * 0.01;
  double get normalValue => height * 0.02;
  double get mediumValue => height * 0.04;
  double get highValue => height * 0.1;


  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}

extension PaddingExtension on BuildContext {

  EdgeInsetsGeometry get appPaddingAll => EdgeInsets.all(dynamicWidth(0.02));
  EdgeInsetsGeometry get paddingAll => EdgeInsets.all(dynamicWidth(0.04));

  EdgeInsetsGeometry get paddingBodyHorizontal => EdgeInsets.symmetric(horizontal: dynamicWidth(0.02));
  EdgeInsetsGeometry get paddingBodyVertical => EdgeInsets.symmetric(vertical: dynamicWidth(0.02));

  EdgeInsetsGeometry get paddingOnlyTop => EdgeInsets.only(
        top: dynamicWidth(0.02),
      );
  EdgeInsetsGeometry get paddingTopAndBottom => EdgeInsets.only(
        top: dynamicWidth(0.02),
        bottom: dynamicWidth(0.03),
      );

  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);

  EdgeInsets get horizontalPaddingLow =>
      EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get horizontalPaddingNormal =>
      EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get horizontalPaddingMedium =>
      EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get horizontalPaddingHigh =>
      EdgeInsets.symmetric(horizontal: highValue);

  EdgeInsets get verticalPaddingLow => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get verticalPaddingNormal =>
      EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get verticalPaddingMedium =>
      EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get verticalPaddingHigh =>
      EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get onlyLeftPaddingLow => EdgeInsets.only(left: lowValue);
  EdgeInsets get onlyLeftPaddingNormal => EdgeInsets.only(left: normalValue);
  EdgeInsets get onlyLeftPaddingMedium => EdgeInsets.only(left: mediumValue);
  EdgeInsets get onlyLeftPaddingHigh => EdgeInsets.only(left: highValue);

  EdgeInsets get onlyRightPaddingLow => EdgeInsets.only(right: lowValue);
  EdgeInsets get onlyRightPaddingNormal => EdgeInsets.only(right: normalValue);
  EdgeInsets get onlyRightPaddingMedium => EdgeInsets.only(right: mediumValue);
  EdgeInsets get onlyRightPaddingHigh => EdgeInsets.only(right: highValue);

  EdgeInsets get onlyBottomPaddingLow => EdgeInsets.only(bottom: lowValue);
  EdgeInsets get onlyBottomPaddingNormal =>
      EdgeInsets.only(bottom: normalValue);
  EdgeInsets get onlyBottomPaddingMedium =>
      EdgeInsets.only(bottom: mediumValue);
  EdgeInsets get onlyBottomPaddingHigh => EdgeInsets.only(bottom: highValue);

  EdgeInsets get onlyTopPaddingLow => EdgeInsets.only(top: lowValue);
  EdgeInsets get onlyTopPaddingNormal => EdgeInsets.only(top: normalValue);
  EdgeInsets get onlyTopPaddingMedium => EdgeInsets.only(top: mediumValue);
  EdgeInsets get onlyTopPaddingHigh => EdgeInsets.only(top: highValue);
}

extension EmptyWidget on BuildContext {
  Widget get emptySizedWidthBoxLow => SizedBox(width: lowValue);
  Widget get emptySizedWidthBoxNormal => SizedBox(width: normalValue);
  Widget get emptySizedWidthBoxHigh => SizedBox(width: highValue);

  Widget get emptySizedHeightBoxLow => SizedBox(height: lowValue);
  Widget get emptySizedHeightBoxNormal => SizedBox(height: normalValue);
  Widget get emptySizedHeightBoxHigh => SizedBox(width: highValue);

}
