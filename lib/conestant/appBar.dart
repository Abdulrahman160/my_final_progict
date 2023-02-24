import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'conset.dart';

 class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.onPressed,
    this.icon = const Icon(Icons.arrow_back_ios_new),
  }) : super(key: key);
  final String title;
  final Function()? onPressed;
  final Widget icon;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();


}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      centerTitle: true,
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
          color: textColor,
        ),
      ),
      elevation: 0,
      backgroundColor: kWhite,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: CircleAvatar(
          radius: 23,
          backgroundColor: kGray,
          child: IconButton(
            color: kBlack,
            onPressed: widget.onPressed!,
            icon: widget.icon,
          ),
        ),
      ),
    );
  }
}
