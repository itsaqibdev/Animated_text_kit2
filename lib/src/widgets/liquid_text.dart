import 'package:flutter/material.dart';

/// Liquid text animation widget
class LiquidAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final TextAlign textAlign;
  final bool repeat;

  const LiquidAnimatedText({
    Key? key,
    required this.text,
    this.duration = const Duration(milliseconds: 1500),
    this.textStyle,
    this.delay = Duration.zero,
    this.textAlign = TextAlign.start,
    this.repeat = false,
  }) : super(key: key);

  @override
  State<LiquidAnimatedText> createState() => _LiquidAnimatedTextState();
}

class _LiquidAnimatedTextState extends State<LiquidAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.elasticOut);

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
      animation: _animation,
      builder: (context, child) {
        return Transform(
          transform: Matrix4.identity()
            ..scale(1.0 + (_animation.value * 0.1))
            ..rotateZ((_animation.value * 0.1)),
          child: Text(
            widget.text,
            style: widget.textStyle?.copyWith(
              height: 1.0 + (1 - _animation.value) * 0.5,
            ),
            textAlign: widget.textAlign,
          ),
        );
      },
    );
  }
}
