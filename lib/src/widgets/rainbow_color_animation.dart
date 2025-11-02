import 'package:flutter/material.dart';

/// Rainbow color animation widget
class RainbowColorAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final TextAlign textAlign;

  const RainbowColorAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 2000),
    this.textStyle,
    this.delay = Duration.zero,
    this.textAlign = TextAlign.start,
  });

  @override
  State<RainbowColorAnimatedText> createState() =>
      _RainbowColorAnimatedTextState();
}

class _RainbowColorAnimatedTextState extends State<RainbowColorAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _colorAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
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

  Color _getColor(double value, int index) {
    double hue = (value * 360 + index * 10) % 360;
    return HSVColor.fromAHSV(1.0, hue, 1.0, 1.0).toColor();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: widget.textAlign == TextAlign.center ? MainAxisAlignment.center : 
                         widget.textAlign == TextAlign.end || widget.textAlign == TextAlign.right ? MainAxisAlignment.end : 
                         MainAxisAlignment.start,
          children: List.generate(widget.text.length, (index) {
            return Text(
              widget.text[index],
              style: widget.textStyle?.copyWith(
                color: _getColor(_colorAnimation.value, index),
              ),
            );
          }),
        );
      },
    );
  }
}