import 'package:flutter/cupertino.dart';
import '../../../conestant/conset.dart';

import '../../../conestant/image.dart';

class SmallCardView extends StatelessWidget {
  const SmallCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 235,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: backgroundCircleAvatar.withOpacity(0.5)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(flex: 6,fit: FlexFit.loose,child: Image.asset(AppImage.smallCard)),
          SizedBox(
            height: 5,
          ),
          Flexible(fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Social Anxiety",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Flexible(fit: FlexFit.loose,
              child: Row(
                children: [Spacer(flex: 1,),
                  Image.asset(
                    AppImage.star,
                  ),
                  Text(
                    "4.9",
                    style: TextStyle(fontSize: 10),
                  ),Spacer(flex: 4,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
