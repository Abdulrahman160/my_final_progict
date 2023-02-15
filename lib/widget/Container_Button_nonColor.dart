import 'package:flutter/material.dart';
import '../conestant/conset.dart';

class ContainerNonColorView extends StatefulWidget {
  const ContainerNonColorView(
      {Key? key,
      this.data,
      this.onTap,
      this.enableImage = false,
      this.image,
      //required this.width,
      })
      : super(key: key);
  final bool enableImage;
  final String? data;
  final GestureTapCallback? onTap;
  final String? image;

  // final double width;

  @override
  State<ContainerNonColorView> createState() => _ContainerNonColorViewState();
}

class _ContainerNonColorViewState extends State<ContainerNonColorView> {
  late bool enableImage;

  @override
  void initState() {
    this.enableImage = widget.enableImage;
    super.initState();
  }

  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,

        child: Container(
            height: 56,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: containerBorderColor)),
            child: Center(
                child: enableImage
                    ? Image.asset(widget.image!)
                    : Text(
                        widget.data!,
                        style: TextStyle(
                            color: containerBorderColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ))),

    );
  }
}
