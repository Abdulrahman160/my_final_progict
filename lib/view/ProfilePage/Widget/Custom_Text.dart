import 'package:flutter/material.dart';

class CustomTextView extends StatefulWidget {
  const CustomTextView({Key? key,
    required this.title,
    required this.name})
      : super(key: key);

  final String title;
  final String name;

  @override
  State<CustomTextView> createState() => _CustomTextViewState();
}

class _CustomTextViewState extends State<CustomTextView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16,),
          Text(widget.title,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 16,),
          Text(
            widget.name,
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 16
            ),
          ),SizedBox(height: 16,),
          Container(height: 1,
            width: 327,color: Colors.grey.shade300,)
        ],
      ),
    );
  }
}
