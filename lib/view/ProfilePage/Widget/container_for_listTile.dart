import 'package:flutter/material.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';
import '../Help_Center/faq_model.dart';

class ContainerListTileView extends StatefulWidget {
  const ContainerListTileView({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DataPageFAQ data;

  @override
  State<ContainerListTileView> createState() => _ContainerListTileViewState();
}

class _ContainerListTileViewState extends State<ContainerListTileView> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: AnimatedContainer(
          duration: Duration(
            microseconds: 250,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: containerBorderColor),
          ),
          height: _expanded ? 150 : 63,
          child: Card(
            elevation: 0.0,
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                ListTile(
                  trailing: Text(
                    widget.data.title!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  leading: IconButton(
                      icon: _expanded
                          ? Image.asset(
                        AppImage.expand_less,
                        height: 12,
                        width: 12,
                      )
                          : Image.asset(
                        AppImage.expand_more,
                        height: 12,
                        width: 12,
                      ),
                      onPressed: () {
                        setState(() {
                          _expanded = !_expanded;
                        });
                      }),
                ),
                AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    height: _expanded ? 80 : 0,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          height: 1,
                          width: 290,
                          color: containerBorderColor,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.data.text!,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),maxLines: int.fromEnvironment(widget.data.text!),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );

  }
}
