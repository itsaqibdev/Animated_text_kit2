import 'package:flutter/material.dart';
import 'dart:math';

/// Wave text animation widget
class WaveAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final double amplitude;
  final double frequency;

  const WaveAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 2000),
    this.textStyle,
    this.delay = Duration.zero,
    this.amplitude = 10.0,
    this.frequency = 1.0,
  });

  @override
  State<WaveAnimatedText> createState() => _WaveAnimatedTextState();
}

class _WaveAnimatedTextState extends State<WaveAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _waveAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _waveAnimation = Tween<double>(begin: 0.0, end: 2 * pi).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );

    Future.delayed(widget.delay, () {
      if (mounted) {
        _controller.repeat();
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
      animation: _waveAnimation,
      builder: (context, child) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(widget.text.length, (index) {
            double offset = sin(_waveAnimation.value + index * widget.frequency) *
                widget.amplitude;
            return Transform.translate(
              offset: Offset(0, offset),
              child: Text(
                widget.text[index],
                style: widget.textStyle,
              ),
            );
          }),
        );
      },
    );
  }
}