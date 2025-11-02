import 'package:flutter/material.dart';

/// Fade animation widget for text
class FadeAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;

  const FadeAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 1000),
    this.textStyle,
    this.delay = Duration.zero,
  });

  @override
  State<FadeAnimatedText> createState() => _FadeAnimatedTextState();
}

class _FadeAnimatedTextState extends State<FadeAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _opacity = Tween<double>(begin: 0.0, end: 1.0).animate(
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
    return FadeTransition(
      opacity: _opacity,
      child: Text(
        widget.text,
        style: widget.textStyle,
      ),
    );
  }
}