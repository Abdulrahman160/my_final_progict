import 'package:flutter/material.dart';
import 'package:my_final_progict/view/ProfilePage/profile_model.dart';

import 'Widget/container_setting.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    Key? key,
    required this.title,
    required this.list,
  }) : super(key: key);
  final String title;
  final List<SettingModel> list;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        Container(
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: list.length,
            separatorBuilder: (context, index) => SizedBox(),
            itemBuilder: (context, index) => ContainerSettingView(
              data: list[index],
            ),
          ),
        ),
      ],
    );
  }
}
