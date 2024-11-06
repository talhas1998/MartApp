import 'package:flutter/material.dart';

class CurvedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  CurvedAppBar({
    required this.title,
    this.backgroundColor = Colors.greenAccent,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: backgroundColor,
      elevation: 0,
      shape: RoundedAppBarShape(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120.0);
}

class RoundedAppBarShape extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..moveTo(0, rect.height)
      ..quadraticBezierTo(
          rect.width / 2, rect.height + 40, rect.width, rect.height)
      ..lineTo(rect.width, 0)
      ..lineTo(0, 0)
      ..close();
  }
}
