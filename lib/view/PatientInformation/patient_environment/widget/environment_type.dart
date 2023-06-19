import 'package:flutter/material.dart';

import '../../../../conestant/conset.dart';
import '../../../../conestant/image.dart';
import '../view.dart';

class EnvironmentTypeView extends StatefulWidget {
  const EnvironmentTypeView({Key? key, required this.types}) : super(key: key);
final String types;


  @override
  State<EnvironmentTypeView> createState() => _EnvironmentTypeViewState();
}
bool chooseTypeEnvironment = false;


class _EnvironmentTypeViewState extends State<EnvironmentTypeView> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        color:chooseTypeEnvironment? kGray:kTransparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: () {
          environment = widget.types;
          environment == widget.types
              ? chooseTypeEnvironment = true
              : chooseTypeEnvironment = false;


          setState(() {});
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.types,
              style: TextStyle(fontSize: 16, color: kBlack),
            ),
            chooseTypeEnvironment? Image.asset(
              AppImage.checkCircle,
              color: kBlue,
            ):SizedBox(),
          ],
        ),
      ),
    );
  }
}
