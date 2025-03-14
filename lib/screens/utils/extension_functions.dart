import 'package:flutter/material.dart';

extension NavigationExtensions on BuildContext {
  /// Navigate to a new screen
  void pushScreen(Widget screen) {
    Navigator.of(this).push(
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  /// Replace the current screen with a new one
  void pushReplacementScreen(Widget screen) {
    Navigator.of(this).pushReplacement(
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  /// Navigate back
  void popScreen() {
    Navigator.of(this).pop();
  }
}

extension ShowHideWidget on Widget {
  Widget show(bool isVisible) {
    return isVisible ? this : SizedBox.shrink();
  }
}

