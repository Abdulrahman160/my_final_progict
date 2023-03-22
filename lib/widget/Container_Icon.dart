import 'package:flutter/material.dart';

class CustomIconView extends StatelessWidget {
  const CustomIconView({Key? key, required this.icons, required this.onTap})
      : super(key: key);

  final IconData? icons;

  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(25)
        ),
        child: Center(child: Icon(icons!, color: Colors.black, size: 25,)),
      ),
    );
  }
}
