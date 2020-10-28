import 'dart:async';

import 'package:flutter/material.dart';

class DialogUtil {
  static toast(context) {
    OverlayState overlay = Overlay.of(context);
    OverlayEntry entry = new OverlayEntry(
      builder: (context) {
        return Center(
          child: Container(width: 100, height: 100, color: Colors.black.withOpacity(0.4)),
        );
      },
    );

    overlay.insert(entry);
    Timer(new Duration(seconds: 3), () {
      entry.remove();
    });
  }
}
