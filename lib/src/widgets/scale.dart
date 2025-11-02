import 'package:flutter/material.dart';

/// Scale animation widget for text
class ScaleAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final double startScale;
  final double endScale;

  const ScaleAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 1000),
    this.textStyle,
    this.delay = Duration.zero,
    this.startScale = 0.0,
    this.endScale = 1.0,
  });

  @override
  State<ScaleAnimatedText> createState() => _ScaleAnimatedTextState();
}

class _ScaleAnimatedTextState extends State<ScaleAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _scale = Tween<double>(begin: widget.startScale, end: widget.endScale).animate(
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
    return ScaleTransition(
      scale: _scale,
      child: Text(
        widget.text,
        style: widget.textStyle,
      ),
    );
  }
}