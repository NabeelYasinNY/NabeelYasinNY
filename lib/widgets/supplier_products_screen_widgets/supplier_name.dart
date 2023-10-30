import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../utils/responsive_util.dart';
import '../generic_widgets/custom_align_text.dart';

class SupplierNameWidget extends StatelessWidget {
  final Color color;
  final double fontSize;
  final String name;
  final double topPosition;

  const SupplierNameWidget({
    super.key,
    required this.color,
    required this.fontSize,
    required this.name,
    required this.topPosition
  });

  @override
  Widget build(BuildContext context) {
    return CustomAlignText(
      alignment: Alignment.topCenter,
      topPadding: ResponsiveUtil.calculateTopPosition(context, topPosition),
      child: Text(
        tr(name),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontFamily: CustomFonts.sulphurPointRegular,
          fontSize: ResponsiveUtil.calculateFontSize(context, fontSize),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
