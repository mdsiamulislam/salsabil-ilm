
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/color/color.dart';

class SListTile extends StatelessWidget {
  String title;
  String subtitle;
  void Function()? onTap;
  Color? prefixBgColor;
  IconData? prefixIcon;
  IconData? suffixIcon;
  Switch? suffixSwitch;
  SListTile({
    required this.title,
    required this.subtitle,
    this.onTap,
    this.prefixBgColor,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixSwitch,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: prefixIcon != null
            ? Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: prefixBgColor ?? AppColors.primary,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            prefixIcon,
            color: Colors.white,
          ),
        )
            : null,
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: suffixSwitch ?? (suffixIcon != null ? Icon(suffixIcon, size: 16) : null),
      ),
    );
  }
}
