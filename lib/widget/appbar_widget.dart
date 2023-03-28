import 'package:flutter/material.dart';

import '../conestant/conset.dart';
import 'icon_back_view.dart';

 class AppBarWidget extends StatefulWidget
    implements PreferredSizeWidget {
  const AppBarWidget({Key? key, required this.title,}) : super(key: key);
  final String title;

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      centerTitle: true,
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: textColor,
        ),
      ),
      elevation: 0,
      backgroundColor: kTransparent,
      leading: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CircleAvatar(
          radius: 23,
          backgroundColor: kGray,
          child:IconBackView() ,
        ),
      ),
      leadingWidth: 100,
    );
  }
}
