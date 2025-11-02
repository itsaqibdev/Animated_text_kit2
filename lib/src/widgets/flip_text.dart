import 'package:flutter/material.dart';

/// 3D Flip text animation widget
class FlipAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final Axis flipAxis;

  const FlipAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 1500),
    this.textStyle,
    this.delay = Duration.zero,
    this.flipAxis = Axis.horizontal,
  });

  @override
  State<FlipAnimatedText> createState() => _FlipAnimatedTextState();
}

class _FlipAnimatedTextState extends State<FlipAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _flipAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _flipAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    Future.delayed(widget.delay, () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _flipAnimation,
      builder: (context, child) {
        double angle = _flipAnimation.value * 3.14159; // π radians
        return Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(widget.flipAxis == Axis.horizontal ? angle : 0.0)
            ..rotateY(widget.flipAxis == Axis.vertical ? angle : 0.0),
          alignment: Alignment.center,
          child: Text(
            widget.text,
            style: widget.textStyle,
          ),
        );
      },
    );
  }
}