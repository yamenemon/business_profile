import 'package:flutter/material.dart';

class SlideAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  Offset offsetValue;

  SlideAnimation({
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    required this.offsetValue,
  });

  @override
  _SlideAnimationState createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );

    _animation = Tween<Offset>(
      begin: widget.offsetValue,
      end: Offset.zero,
    ).animate(_controller);

    _controller.forward();
  }

  @override
  void didUpdateWidget(SlideAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.offsetValue != oldWidget.offsetValue) {
      _animation = Tween<Offset>(
        begin: widget.offsetValue,
        end: Offset.zero,
      ).animate(_controller);

      _controller.reset();
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
