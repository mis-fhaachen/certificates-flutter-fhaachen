import 'package:flutter/material.dart';

/// A secondary button used in the application.
///
class BuildSecondaryButton extends StatelessWidget {
  /// Create a secondary button.
  ///
  BuildSecondaryButton({
    required this.text,
    required this.withIcon,
    this.icon = Icons.check_box_outline_blank,
    this.color = const Color(0xffffffff),
    this.width = double.infinity,
    this.height = 48.0,
    required this.function,
    this.textStyle = const TextStyle(
      fontSize: 16.0,
      color: Color(0xff000000),
    ),
    required this.hint,
  })   : assert(text != null),
        assert(height == 48.0),
        assert(function != null);

  /// The button`s displayed text.
  final String? text;

  /// The button`s icon.
  ///
  /// If `true` the button has a leading icon.
  ///
  final bool withIcon;

  /// The leading icon of the button.
  ///
  /// The default value is [Icons.check_box_outline_blank].
  ///
  final IconData icon;

  /// The text color.
  final Color? color;

  /// The width of the button.
  final double width;

  /// The height of the button.
  final double height;

  /// The button`s action.
  final Function()? function;

  /// The text theme for the displayed text.
  final TextStyle? textStyle;

  /// The brief textual description of the result of an action
  /// performed on the button.
  ///
  /// Is used in the [Semantics] widget for accessibility reason.
  ///
  final String? hint;

  @override
  Widget build(BuildContext context) {
    final Widget result = Container(
      width: this.width,
      height: this.height,
      child: ElevatedButton(
        onPressed: this.function,
        style: ElevatedButton.styleFrom(
          primary: this.color,
        ),
        child: Text(
          this.text!.toUpperCase(),
          style: this.textStyle,
        ),
      ),
    );

    return Semantics(
      button: true,
      hint: this.hint,
      child: result,
    );
  }
}