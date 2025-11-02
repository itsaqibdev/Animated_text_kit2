import 'package:flutter/material.dart';
import 'dart:math';

/// Matrix-style fall-down animation widget
class MatrixFallDownAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final double fallDistance;
  final TextAlign textAlign;
  final bool repeat;

  const MatrixFallDownAnimatedText({
    Key? key,
    required this.text,
    this.duration = const Duration(milliseconds: 2000),
    this.textStyle,
    this.delay = Duration.zero,
    this.fallDistance = 100.0,
    this.textAlign = TextAlign.start,
    this.repeat = false,
  }) : super(key: key);

  @override
  State<MatrixFallDownAnimatedText> createState() =>
      _MatrixFallDownAnimatedTextState();
}

class _MatrixFallDownAnimatedTextState extends State<MatrixFallDownAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fallAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _fallAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    Future.delayed(widget.delay, () {
      if (mounted) {
        if (widget.repeat) {
          _controller.repeat();
        } else {
          _controller.forward();
        }
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
      animation: _fallAnimation,
      builder: (context, child) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: widget.textAlign == TextAlign.center
              ? MainAxisAlignment.center
              : widget.textAlign == TextAlign.end ||
                    widget.textAlign == TextAlign.right
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: List.generate(widget.text.length, (index) {
            // Stagger the animation for each character
            double staggerValue = min(
              1.0,
              max(0.0, _fallAnimation.value * widget.text.length - index),
            );
            double opacity = max(0.0, min(1.0, 1.0 - staggerValue));
            double translateY = staggerValue * widget.fallDistance;

            return Transform.translate(
              offset: Offset(0, translateY),
              child: Opacity(
                opacity: opacity,
                child: Text(widget.text[index], style: widget.textStyle),
              ),
            );
          }),
        );
      },
    );
  }
}
