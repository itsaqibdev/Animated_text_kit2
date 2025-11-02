import 'package:flutter/material.dart';

/// Zoom animation widget for text (combination of scale and fade)
class ZoomAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final double startScale;
  final double endScale;
  final TextAlign textAlign;
  final bool repeat;

  const ZoomAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 1000),
    this.textStyle,
    this.delay = Duration.zero,
    this.startScale = 0.0,
    this.endScale = 1.0,
    this.textAlign = TextAlign.start,
    this.repeat = false,
  });

  @override
  State<ZoomAnimatedText> createState() => _ZoomAnimatedTextState();
}

class _ZoomAnimatedTextState extends State<ZoomAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _scale = Tween<double>(
      begin: widget.startScale,
      end: widget.endScale,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

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
    return ScaleTransition(
      scale: _scale,
      child: FadeTransition(
        opacity: _opacity,
        child: Text(
          widget.text,
          style: widget.textStyle,
          textAlign: widget.textAlign,
        ),
      ),
    );
  }
}
