import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    this.color = Colors.blue,
    this.borderRadius,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String label;
  final Function() onPressed;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final _borderRadius = borderRadius ?? BorderRadius.circular(10);

    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          borderRadius: _borderRadius,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: color.withOpacity(.25),
              borderRadius: _borderRadius,
            ),
            padding: const EdgeInsets.all(15),
            child: Icon(
              icon,
              color: color,
              size: 30,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: 70,
          child: Text(
            label.capitalizeFirst!,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
