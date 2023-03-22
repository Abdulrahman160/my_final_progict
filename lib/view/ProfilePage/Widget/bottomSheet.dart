import 'package:flutter/material.dart';

import '../../../widget/Container_Button_Color.dart';
import '../../../widget/Container_Button_nonColor.dart';

class BottomSheetView extends StatefulWidget {
  const BottomSheetView(
      {Key? key,
      required this.title,
      required this.hint,
      required this.nameColor,
      required this.nameNonColor})
      : super(key: key);
  final String? title;
  final String? hint;
  final String? nameColor;
  final String? nameNonColor;

  @override
  State<BottomSheetView> createState() => _BottomSheetViewState();
}

class _BottomSheetViewState extends State<BottomSheetView> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        onClosing: () {},
        enableDrag: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
        builder: (context) => Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              height: 330,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    widget.title!,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    widget.hint!,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ContainerColorView(
                    data: widget.nameColor!,
                    onTap: () {
                      // _save();
                      // _read();
                      // TODO Abdulrahman HAssn
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ContainerNonColorView(
                    data: widget.nameNonColor!,
                    onTap: () => Navigator.pop(context),
                  )
                ],
              ),
            ));
  }

// TODO  Save data for page Edit_Profile
// _read() async {
//   final prefs = await SharedPreferences.getInstance();
//   final key = 'my_int_key';
//   final value = prefs.getInt(key) ?? 0;
//   print('read: $value');
// }
//
// _save() async {
//   final prefs = await SharedPreferences.getInstance();
//   final key = 'my_int_key';
//   final value = 42;
//   prefs.setInt(key, value);
//   print('saved $value');
// }
}
