import 'package:flutter/material.dart';

/// Neon glow text animation widget
class NeonGlowAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final Color glowColor;
  final double blurRadius;
  final TextAlign textAlign;
  final bool repeat;

  const NeonGlowAnimatedText({
    Key? key,
    required this.text,
    this.duration = const Duration(milliseconds: 1500),
    this.textStyle,
    this.delay = Duration.zero,
    this.glowColor = Colors.cyan,
    this.blurRadius = 10.0,
    this.textAlign = TextAlign.start,
    this.repeat = false,
  }) : super(key: key);

  @override
  State<NeonGlowAnimatedText> createState() => _NeonGlowAnimatedTextState();
}

class _NeonGlowAnimatedTextState extends State<NeonGlowAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _glowAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _glowAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    Future.delayed(widget.delay, () {
      if (mounted) {
        if (widget.repeat) {
          _controller.repeat(reverse: true);
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
      animation: _glowAnimation,
      builder: (context, child) {
        double currentBlur = widget.blurRadius * _glowAnimation.value;
        return Text(
          widget.text,
          style: widget.textStyle?.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2.0
              ..color = widget.glowColor
              ..maskFilter = MaskFilter.blur(BlurStyle.normal, currentBlur),
          ),
          textAlign: widget.textAlign,
        );
      },
    );
  }
}
