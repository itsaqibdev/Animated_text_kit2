import 'package:flutter/material.dart';

/// Rotate animation widget for text
class RotateAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final double startAngle;
  final double endAngle;

  const RotateAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 1000),
    this.textStyle,
    this.delay = Duration.zero,
    this.startAngle = 0.0,
    this.endAngle = 2 * 3.14159, // Full rotation
  });

  @override
  State<RotateAnimatedText> createState() => _RotateAnimatedTextState();
}

class _RotateAnimatedTextState extends State<RotateAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _rotation = Tween<double>(begin: widget.startAngle, end: widget.endAngle).animate(
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
    return RotationTransition(
      turns: _rotation,
      child: Text(
        widget.text,
        style: widget.textStyle,
      ),
    );
  }
}