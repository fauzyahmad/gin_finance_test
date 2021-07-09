import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  // final String inputName;
  final String? helperText;
  final TextEditingController controller;
  final TextInputAction actionKeyboard;
  final FocusNode? focusNode;
  final TextInputType actionType;
  final Function onSubmitField;
  final Color fillColor;
  final EdgeInsets contentPadding;
  final Widget? prefixIcon;
  final Function onChange;
  final List<TextInputFormatter>? inputFormatter;
  CustomTextField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.helperText,
    this.focusNode,
    this.actionKeyboard = TextInputAction.next,
    this.actionType = TextInputType.text,
    this.fillColor = Colors.white,
    this.prefixIcon,
    this.inputFormatter,
    required this.onSubmitField,
    required this.onChange,
    required this.controller,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: widget.inputFormatter,
      obscureText: widget.obscureText,
      controller: widget.controller,
      textInputAction: widget.actionKeyboard,
      keyboardType: widget.actionType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey[400]!),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.red[400]!),
        ),
        // errorStyle:
        hintText: widget.hintText,
        prefix: widget.prefixIcon,
      ),
    );
  }
}
