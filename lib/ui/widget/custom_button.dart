import 'package:flutter/material.dart';
import 'package:kit/assets/theme.dart';

class CustomButton extends StatelessWidget {
  final bool enabled;
  final Function function;
  final String title;

  const CustomButton(
      {Key? key,
      required this.enabled,
      required this.function,
      required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          primary: enabled ? Colors.black : Colors.grey,
        ),
        onPressed: () {
          if (enabled) {
            function();
          }
        },
        child: Text(title.toUpperCase(), style: TextStyleTheme.title_2));
  }
}
