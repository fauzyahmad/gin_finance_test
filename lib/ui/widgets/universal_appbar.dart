import 'package:flutter/material.dart';

class UniversalAppbar extends StatelessWidget with PreferredSizeWidget {
  final double height;
  final String title;
  UniversalAppbar({
    Key? key,
    required this.title,
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      // backgroundColor: ,
      elevation: 0,
      title: Text(
        title,
      ),
    );
  }
}
