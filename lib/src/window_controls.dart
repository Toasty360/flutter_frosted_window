import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class WindowControls extends StatelessWidget {
  const WindowControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WindowButton(iconData: Icons.remove, onPressed: windowManager.minimize),
        WindowButton(
          iconData: Icons.crop_square,
          onPressed: windowManager.maximize,
        ),
        WindowButton(iconData: Icons.close, onPressed: windowManager.close),
      ],
    );
  }
}

class WindowButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;
  final double size;
  final Color? color;
  final Color? backgroundColor;

  const WindowButton({
    super.key,
    required this.iconData,
    required this.onPressed,
    this.size = 18,
    this.color,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: onPressed,
          splashColor: Theme.of(
            context,
          ).colorScheme.primary.withValues(alpha: 0.5),
          child: Center(
            child: Icon(
              iconData,
              size: size,
              color:
                  color ??
                  Theme.of(context).textTheme.titleLarge?.color ??
                  Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
