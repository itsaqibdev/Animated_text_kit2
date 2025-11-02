import 'package:flutter/material.dart';
import 'dart:math';

/// Glitch text animation widget
class GlitchAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final int glitchCount;

  const GlitchAnimatedText({
    Key? key,
    required this.text,
    this.duration = const Duration(milliseconds: 2000),
    this.textStyle,
    this.delay = Duration.zero,
    this.glitchCount = 5,
  }) : super(key: key);

  @override
  State<GlitchAnimatedText> createState() => _GlitchAnimatedTextState();
}

class _GlitchAnimatedTextState extends State<GlitchAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  String _displayText = '';
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _displayText = widget.text;
    
    Future.delayed(widget.delay, () {
      if (mounted) {
        _controller.forward();
        _applyGlitchEffect();
      }
    });
  }

  void _applyGlitchEffect() {
    if (!mounted) return;
    
    setState(() {
      // Generate random glitch characters
      List<String> chars = _displayText.split('');
      for (int i = 0; i < min(widget.glitchCount, chars.length); i++) {
        int index = _random.nextInt(chars.length);
        chars[index] = _getRandomChar();
      }
      _displayText = chars.join();
    });
    
    // Reset to original text after a short delay
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        setState(() {
          _displayText = widget.text;
        });
      }
    });
  }

  String _getRandomChar() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#\$%^&*()';
    return chars[_random.nextInt(chars.length)];
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
        return Text(
          _displayText,
          style: widget.textStyle?.copyWith(
            color: Color.lerp(Colors.white, widget.textStyle?.color, _animation.value),
          ),
        );
      },
    );
  }
}