import 'package:flutter/material.dart';

class NavItem {
  final String title;
  final String? route;
  final IconData? icon;
  final bool? selected;
  final bool? enabled;
  final Function? onTap;

  NavItem({
    this.selected = false,
    this.enabled,
    this.onTap,
    required this.title,
    required this.route,
    required this.icon,
  });
}
