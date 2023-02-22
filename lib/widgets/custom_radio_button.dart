import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  var index;
  var label;
  var checkSize;
  CustomRadioButton(
      {super.key,
      required this.index,
      required this.label,
      required this.checkSize});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  // int checkSize = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.checkSize == widget.index
            ? Icon(
                Icons.done_rounded,
                color: Color(
                  0xFFF55349,
                ),
                size: 20,
              )
            : Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.all(
                    //     Radius.circular(50)),
                    border: Border.all(color: Colors.grey.shade400)),
              ),
        Padding(
            padding: EdgeInsets.only(
                right: widget.checkSize == widget.index ? 4 : 10)),
        Text(
          '${widget.label}',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        )
      ],
    );
  }
}
