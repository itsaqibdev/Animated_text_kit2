import 'package:flutter/material.dart';

/// Elastic effect animation widget
class ElasticAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final double scaleAmount;
  final TextAlign textAlign;

  const ElasticAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 1500),
    this.textStyle,
    this.delay = Duration.zero,
    this.scaleAmount = 0.2,
    this.textAlign = TextAlign.start,
  });

  @override
  State<ElasticAnimatedText> createState() => _ElasticAnimatedTextState();
}

class _ElasticAnimatedTextState extends State<ElasticAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
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