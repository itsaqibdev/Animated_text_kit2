import 'package:flutter/material.dart';

/// Spring effect animation widget
class SpringAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final double scaleAmount;
  final TextAlign textAlign;

  const SpringAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 1500),
    this.textStyle,
    this.delay = Duration.zero,
    this.scaleAmount = 0.3,
    this.textAlign = TextAlign.start,
  });

  @override
  State<SpringAnimatedText> createState() => _SpringAnimatedTextState();
}

class _SpringAnimatedTextState extends State<SpringAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
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
      animation: _scaleAnimation,
      builder: (context, child) {
        double scale = 1.0 + (widget.scaleAmount * (1 - _scaleAnimation.value));
        return Transform.scale(
          scale: scale,
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