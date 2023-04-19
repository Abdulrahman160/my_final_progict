import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../conestant/conset.dart';
import '../../Login.dart';
import '../profile_model.dart';
import 'bottomSheet.dart';

class ContainerSettingView extends StatefulWidget {
  const ContainerSettingView({
    Key? key,
    required this.data,
  }) : super(key: key);

  final SettingModel data;

  @override
  State<ContainerSettingView> createState() => _ContainerSettingViewState();
}

class _ContainerSettingViewState extends State<ContainerSettingView> {
  bool state = true;
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(
        height: 20,
      ),
      Container(
        height: 53,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderContainerSettingColor, width: 1),
        ),
        child: InkWell(
          onTap: () {
            widget.data.changeSwitch
                ? setState(() {
                    _switchValue = !_switchValue;
                  })
                : widget.data.enableButtonSheet!
                    ? showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return BottomSheetView(
                            onTapContainerColor: () {
                              FirebaseAuth.instance.signOut();
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginView(),
                                  ));
                            },
                            title: 'Log Out',
                            hint: 'Are you sure you want to Log out?',
                            nameColor: 'Log out',
                            nameNonColor: 'Cancel',
                          );
                        })
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => widget.data.namePage!));
          },
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
              Spacer(),
              SizedBox(
                  child: widget.data.changeSwitch
                      ? Switch(
                          value: _switchValue,
                          activeColor: Colors.blue.shade800,
                          inactiveTrackColor: Colors.grey.shade400,
                          inactiveThumbColor: Colors.black.withOpacity(0.6),
                          onChanged: (newValue) {
                            setState(() {
                              _switchValue = newValue;
                              // print(_switchValue);
                            });
                          })
                      : SizedBox())
            ],
          ),
        ),
      ),
    ]);
  }
}
