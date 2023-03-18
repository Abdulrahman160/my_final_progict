import 'package:flutter/material.dart';
import '../profile_model.dart';

class ContainerSettingView extends StatefulWidget {
  const ContainerSettingView({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Setting data;

  @override
  State<ContainerSettingView> createState() => _ContainerSettingViewState();
}

class _ContainerSettingViewState extends State<ContainerSettingView> {
  @override
  bool state = true;
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 53,
            width: 327,
            decoration: BoxDecoration(
                color: Color(0xffF3F3F3),
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.1), width: 1)),
            child: Row(
              children: [
                SizedBox(
                  width: 14,
                ),
                Image.asset(widget.data.icon!),
                SizedBox(
                  width: 17,
                ),
                Text(widget.data.text!),
                SizedBox(
                  width: 113,
                ),
                SizedBox(
                    child: widget.data.changeSwitch! ? Switch(
                        value: state,
                        activeColor: Colors.blue.shade800,
                        inactiveTrackColor: Colors.grey.shade400,
                        inactiveThumbColor: Colors.black.withOpacity(0.6),
                        onChanged: (bool s) {
                          setState(() {
                            state = s;
                            print(state);
                          });
                        }) : SizedBox())
              ],
            ),
          ),
        ]));
  }
}
