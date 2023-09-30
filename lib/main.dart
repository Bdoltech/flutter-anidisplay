import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const Widget007());
}

class Widget007 extends StatefulWidget {
  const Widget007({Key? key}) : super(key: key);

  @override
  _Widget007State createState() => _Widget007State();
}

class _Widget007State extends State<Widget007> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: const FlutterLogo(
          size: 100,
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.scale(
            scaleX: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
