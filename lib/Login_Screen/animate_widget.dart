import 'dart:async';

import 'package:flutter/material.dart';

class AnimateWidget extends StatefulWidget {
  final Widget child;
  final int delay;
  final double offsetX;
  final double offsetY;
  final int duration;

  AnimateWidget({Key key, @required this.child, this.delay, this.offsetX, this.offsetY, this.duration}) : super(key: key);

  @override
  _AnimateWidgetState createState() => _AnimateWidgetState();
}

class _AnimateWidgetState extends State<AnimateWidget> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;
  CurvedAnimation _curve;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: widget.duration));
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeOutExpo);
    _offsetAnimation = Tween<Offset>(begin: Offset(widget.offsetX, widget.offsetY), end: Offset.zero).animate(_curve);

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
    return SlideTransition(
      position: _offsetAnimation,
      child: widget.child,
    );
  }
}
