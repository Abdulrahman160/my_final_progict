import 'package:flutter/material.dart';

import '../conestant/conset.dart';
import 'icon_back_view.dart';

class AppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
    required this.title,
    this.iconWidget, this.fontSize=18, this.elevation=0,
  }) : super(key: key);
  final String title;
  final Widget? iconWidget;
  final double? fontSize;
  final double? elevation;

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: widget.fontSize,
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
        elevation: widget.elevation,
        backgroundColor: kTransparent,
        leading: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, right: 50),
          child:  IconBackView(),
        ),
        leadingWidth: 100,
        // actions: [widget.iconWidget!],
      ),
    );
  }
}
