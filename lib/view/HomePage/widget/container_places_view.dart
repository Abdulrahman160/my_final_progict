import 'package:flutter/cupertino.dart';

import '../../../conestant/conset.dart';
import '../../../conestant/image.dart';

class ContainerPlacesView extends StatelessWidget {
  const ContainerPlacesView(
      {Key? key, required this.image, required this.title})
      : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          Image.asset(image),
          Image.asset(AppImage.shadow),
          Positioned(
            left: 22,
            top: 41,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: kWhite,
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Text(
                  "more informatoion",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: kWhite,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
