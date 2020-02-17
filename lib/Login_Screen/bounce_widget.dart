import 'dart:async';

import 'package:flutter/material.dart';

class BounceWidget extends StatefulWidget {
  final Widget child;
  final double size;
  final int delay;

  BounceWidget({Key key, @required this.child, this.size, this.delay}) : super(key: key);

  @override
  _BounceWidgetState createState() => _BounceWidgetState();
}

class _BounceWidgetState extends State<BounceWidget> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  CurvedAnimation _curve;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    _curve = CurvedAnimation(parent: _controller, curve: Curves.decelerate);
    _scaleAnimation = Tween<double>(begin: 0, end: widget.size / 100).animate(_curve);

    if (widget.child == null) {
      _controller.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay), () {
        _controller.forward();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: widget.child,
    );
  }
}
