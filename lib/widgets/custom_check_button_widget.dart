import "package:flutter/material.dart";

// typedef IsSelected = void Function(bool value);
class CustomCheckBoxButton extends StatefulWidget {
  var label;
  var value;
  var isSelected;
  CustomCheckBoxButton(
      {super.key,
      required this.label,
      required this.value,
      required this.isSelected});

  @override
  State<CustomCheckBoxButton> createState() => _CustomCheckBoxButtonState();
}

class _CustomCheckBoxButtonState extends State<CustomCheckBoxButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.isSelected
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
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.grey.shade400)),
              ),
        Padding(padding: EdgeInsets.only(right: widget.isSelected ? 4 : 10)),
        Text(
          '${widget.label}',
          style: TextStyle(color: Colors.grey, fontSize: 13),
        )
      ],
    );
  }
}
