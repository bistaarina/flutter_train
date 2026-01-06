import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Widget? suffix;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPressed;
  const CustomButton({
    super.key,
    required this.text,
    this.textStyle,
    this.backgroundColor,
    this.suffix,
    this.padding,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.blue,
        padding: padding ?? EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: textStyle),
          if (suffix != null) ...[SizedBox(width: 8), suffix!],
        ],
      ),
    );
  }
}
