import 'package:flutter/material.dart';
import 'package:steadycallendar/config/styles.dart';

class SCFlatButton extends StatelessWidget {
  const SCFlatButton(this.child,
      {super.key, this.textColor, this.backgroundColor, this.onTap});
  final Widget child;
  final GestureTapCallback? onTap;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: (backgroundColor ?? Styles.primaryHighlightColor),
        foregroundColor: (textColor ?? Colors.white),
        elevation: 1,
        textStyle: const TextStyle(
            fontFamily: Styles.primaryFontRegular,
            fontWeight: Styles.primaryFontWeightLight,
            fontSize: Styles.primaryButtonFontSize),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      ),
      onPressed: onTap,
      child: child,
    );
  }
}
