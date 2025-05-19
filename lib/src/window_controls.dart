import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class WindowControls extends StatefulWidget {
  const WindowControls({super.key});

  @override
  State<WindowControls> createState() => _WindowControlsState();
}

class _WindowControlsState extends State<WindowControls> with WindowListener {
  bool _isMaximized = false;

  @override
  void initState() {
    super.initState();
    windowManager.addListener(this);
    _checkMaximized();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  void onWindowMaximize() {
    setState(() => _isMaximized = true);
  }

  @override
  void onWindowUnmaximize() {
    setState(() => _isMaximized = false);
  }

  Future<void> _checkMaximized() async {
    final isMaximized = await windowManager.isMaximized();
    if (mounted) {
      setState(() => _isMaximized = isMaximized);
    }
  }

  Future<void> _toggleMaximize() async {
    if (_isMaximized) {
      await windowManager.unmaximize();
    } else {
      await windowManager.maximize();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WindowButton(iconData: Icons.remove, onPressed: windowManager.minimize),
        WindowButton(
          iconData: _isMaximized ? Icons.filter_none : Icons.crop_square,
          onPressed: _toggleMaximize,
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
