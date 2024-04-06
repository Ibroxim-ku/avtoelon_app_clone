import 'package:flutter/cupertino.dart';

class ClickButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final TextStyle? textStyle;
  final Color color;
  const ClickButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      color: color,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
