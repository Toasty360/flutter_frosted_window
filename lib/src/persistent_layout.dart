// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'package:flutter_frosted_window/model/nav_item.dart';
import 'package:flutter_frosted_window/src/window_controls.dart';

class PersistentLayout extends StatelessWidget {
  final Widget child;
  final Widget? leading;
  final Widget? trailing;
  final String? title;
  final TextStyle? titleStyle;
  final double titleBarHeight;
  final bool useBlur;
  final double blurSigma;
  final List<NavItem>? navItems;

  const PersistentLayout({
    super.key,
    required this.child,
    this.leading,
    this.trailing,
    this.title = '',
    this.titleStyle,
    this.titleBarHeight = 40,
    this.useBlur = true,
    this.blurSigma = 20,
    this.navItems,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onPanStart: (_) => windowManager.startDragging(),
            child: Container(
              height: titleBarHeight,
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  if (leading != null) leading!,
                  Text(
                    title ?? "",
                    style: TextStyle(
                      color: Theme.of(context).textTheme.titleLarge?.color,
                    ),
                  ),
                  const Spacer(),
                  if (trailing != null) trailing! else const WindowControls(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                if (navItems != null) NavSection(navItems: navItems!),
                Expanded(
                  flex: 1,
                  child: MainSection(
                    useBlur: useBlur,
                    blurSigma: blurSigma,
                    child: child,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavSection extends StatelessWidget {
  final List<NavItem> navItems;
  const NavSection({super.key, required this.navItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children:
            navItems.map((e) => NavTile(item: e, showIcon: true)).toList(),
      ),
    );
  }
}

class NavTile extends StatelessWidget {
  final NavItem item;
  final bool showIcon;
  const NavTile({super.key, required this.item, required this.showIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color:
            item.selected!
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.surface,
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (showIcon) Icon(item.icon),
          if (showIcon) const SizedBox(width: 5),
          Text(item.title, maxLines: 1, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

class MainSection extends StatelessWidget {
  final Widget child;
  final bool useBlur;
  final double blurSigma;
  const MainSection({
    super.key,
    required this.child,
    required this.useBlur,
    required this.blurSigma,
  });

  @override
  Widget build(BuildContext context) {
    return useBlur
        ? Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).dividerColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
                child: Container(color: Colors.black.withValues(alpha: 0.2)),
              ),
              child,
            ],
          ),
        )
        : child;
  }
}
