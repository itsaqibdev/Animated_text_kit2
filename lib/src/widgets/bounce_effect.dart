import 'package:flutter/material.dart';

/// Bounce effect animation widget
class BounceAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final double bounceHeight;
  final TextAlign textAlign;

  const BounceAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 1000),
    this.textStyle,
    this.delay = Duration.zero,
    this.bounceHeight = 20.0,
    this.textAlign = TextAlign.start,
  });

  @override
  State<BounceAnimatedText> createState() => _BounceAnimatedTextState();
}

class _BounceAnimatedTextState extends State<BounceAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bounceAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _bounceAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceOut),
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
      animation: _bounceAnimation,
      builder: (context, child) {
        double translateY = (1 - _bounceAnimation.value) * widget.bounceHeight;
        return Transform.translate(
          offset: Offset(0, translateY),
          child: Text(
            widget.text,
            style: widget.textStyle,
            textAlign: widget.textAlign,
          ),
        );
      },
    );
  }
}