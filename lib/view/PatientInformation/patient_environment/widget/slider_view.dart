import 'package:flutter/material.dart';
import 'package:my_final_progict/conestant/conset.dart';

class SliderView extends StatefulWidget {
  const SliderView({
    Key? key,
    required this.title,
    required this.divisions,
    required this.maxRange,
  }) : super(key: key);
  final String title;
  final int divisions;
  final String maxRange;

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  var selectRangeValue = RangeValues(0, 0);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: kBlack,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        RangeSlider(
          values: selectRangeValue,
          onChanged: (value) {
            selectRangeValue = value;

            setState(() {});
          },
          divisions: widget.divisions,
          labels: RangeLabels(
            '${selectRangeValue.start * widget.divisions * 5}',
            '${selectRangeValue.end * widget.divisions * 5}',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 14,
                color: kBlack,
              ),
            ),
            Text(
              widget.maxRange,
              style: TextStyle(
                fontSize: 14,
                color: kBlack,
              ),
            ),
          ],
        )
      ],
    );
  }
}
