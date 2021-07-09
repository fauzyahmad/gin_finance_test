import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String titleButton;
  final Function onPressed;
  final Color fillColor;
  final Color borderColor;
  CustomButton({
    Key? key,
    required this.titleButton,
    required this.fillColor,
    required this.onPressed,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPressed(),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(
            color: borderColor.withOpacity(1),
          )),
      elevation: 0,
      fillColor: fillColor,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Text(titleButton),
      ),
    );
  }
}
