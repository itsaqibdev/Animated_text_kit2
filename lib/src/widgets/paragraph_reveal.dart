import 'package:flutter/material.dart';

/// Paragraph reveal animation widget
class ParagraphRevealAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final TextAlign textAlign;

  const ParagraphRevealAnimatedText({
    Key? key,
    required this.text,
    this.duration = const Duration(milliseconds: 2000),
    this.textStyle,
    this.delay = Duration.zero,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  State<ParagraphRevealAnimatedText> createState() =>
      _ParagraphRevealAnimatedTextState();
}

class _ParagraphRevealAnimatedTextState
    extends State<ParagraphRevealAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _clipAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _clipAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
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
    return AnimatedBuilder(
      animation: _clipAnimation,
      builder: (context, child) {
        return ClipRect(
          child: Align(
            alignment: Alignment.centerLeft,
            widthFactor: _clipAnimation.value,
            child: Text(
              widget.text,
              style: widget.textStyle,
              textAlign: widget.textAlign,
            ),
          ),
        );
      },
    );
  }
}