import 'package:flutter/material.dart';
import '../conset.dart';

class ContainerNonColorView extends StatelessWidget {
  const ContainerNonColorView({Key? key, required this.data, this.onTap}) : super(key: key);

  final String data;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
              height: 56,
              width: 295,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color:containerBorderColor)
              ),
              child: Center(
                  child: Text(
                    data,
                    style: TextStyle(
                        color: containerBorderColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
              )
      ),
    );

  }
}
