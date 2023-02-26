import 'package:flutter/material.dart';

class CustomSaveArea extends StatelessWidget {
  const CustomSaveArea({Key? key, required this.child}) : super(key: key);
final Widget child;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: child);
  }
}
