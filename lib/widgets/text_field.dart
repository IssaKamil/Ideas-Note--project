import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.hintTitle,
      this.frontIcon,
      this.backIcon,
      required this.radius,
      this.frontIconColor,
      this.backIconColor,
      required this.hintTitleColor,
      required this.obscure,
      this.dense,
      this.collapsed,
      this.onpressed});

  final String? hintTitle;
  final IconData? frontIcon;
  final IconData? backIcon;
  final Color? frontIconColor;
  final BorderRadius? radius;
  final Color? backIconColor;
  final Color? hintTitleColor;
  final bool obscure;
  final bool? collapsed;
  final bool? dense;
  final Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
      child: TextFormField(
        clipBehavior: Clip.hardEdge,
        obscureText: obscure,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          isCollapsed: collapsed,
          isDense: dense,
          hintText: hintTitle,
          hintStyle: TextStyle(
            color: hintTitleColor,
          ),
          border: OutlineInputBorder(borderRadius: radius!),
          prefixIcon: IconButton(
            color: frontIconColor,
            onPressed: () {},
            icon: Icon(frontIcon),
          ),
          suffixIcon: IconButton(
            color: backIconColor,
            icon: Icon(backIcon),
            onPressed: () {},
          )
        ),
      ),
    );
  }
}
