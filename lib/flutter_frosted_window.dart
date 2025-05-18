import 'dart:io';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
export 'package:flutter_frosted_window/src/froster_themes.dart';
export 'package:flutter_frosted_window/src/persistent_layout.dart';
export 'package:flutter_frosted_window/src/window_controls.dart';
export 'package:flutter_frosted_window/src/frosted_app.dart';

WindowManager? frosterWindowManager = WindowManager.instance;

Future<void> initFrostedWindow([List<Function()>? callbacks]) async {
  if (!Platform.isWindows && !Platform.isMacOS && !Platform.isLinux) return;

  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(800, 600),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );

  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
    callbacks?.forEach((callback) => callback.call());
  });
}
