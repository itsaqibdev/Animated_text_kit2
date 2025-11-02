import 'package:flutter/material.dart';

/// Typewriter 2.0 widget with cursor effects and variable typing speed
class TypewriterAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final bool showCursor;
  final Widget? cursor;
  final Duration cursorBlinkInterval;
  final double speedFactor;

  const TypewriterAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 500),
    this.textStyle,
    this.showCursor = true,
    this.cursor,
    this.cursorBlinkInterval = const Duration(milliseconds: 500),
    this.speedFactor = 1.0,
  });

  @override
  State<TypewriterAnimatedText> createState() => _TypewriterAnimatedTextState();
}

class _TypewriterAnimatedTextState extends State<TypewriterAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _textIndex;
  bool _showCursor = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _textIndex = StepTween(begin: 0, end: widget.text.length).animate(_controller);
    
    _controller.forward();
    
    // Cursor blinking effect
    if (widget.showCursor) {
      Future.delayed(widget.cursorBlinkInterval, _toggleCursor);
    }
  }

  void _toggleCursor() {
    if (!mounted) return;
    setState(() {
      _showCursor = !_showCursor;
    });
    Future.delayed(widget.cursorBlinkInterval, _toggleCursor);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _textIndex,
      builder: (context, child) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.text.substring(0, _textIndex.value),
              style: widget.textStyle,
            ),
            if (widget.showCursor && _showCursor)
              widget.cursor ?? const Text('|'),
          ],
        );
      },
    );
  }
}