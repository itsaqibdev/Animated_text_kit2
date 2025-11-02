import 'package:flutter/material.dart';

/// Split characters animation widget
class SplitCharactersAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final Duration characterDelay;
  final TextAlign textAlign;

  const SplitCharactersAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 1000),
    this.textStyle,
    this.delay = Duration.zero,
    this.characterDelay = const Duration(milliseconds: 100),
    this.textAlign = TextAlign.start,
  });

  @override
  State<SplitCharactersAnimatedText> createState() =>
      _SplitCharactersAnimatedTextState();
}

class _SplitCharactersAnimatedTextState
    extends State<SplitCharactersAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<AnimationController> _charControllers;
  late List<Animation<double>> _charAnimations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _charControllers = [];
    _charAnimations = [];

    // Create controllers for each character
    for (int i = 0; i < widget.text.length; i++) {
      AnimationController charController =
          AnimationController(duration: widget.duration, vsync: this);
      _charControllers.add(charController);
      _charAnimations.add(Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: charController, curve: Curves.easeInOut),
      ));

      // Start animation with delay for each character
      Future.delayed(
          widget.delay + Duration(milliseconds: i * widget.characterDelay.inMilliseconds),
          () {
        if (mounted) {
          charController.forward();
        }
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    for (var controller in _charControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: widget.textAlign == TextAlign.center ? MainAxisAlignment.center : 
                     widget.textAlign == TextAlign.end || widget.textAlign == TextAlign.right ? MainAxisAlignment.end : 
                     MainAxisAlignment.start,
      children: List.generate(widget.text.length, (index) {
        return AnimatedBuilder(
          animation: _charAnimations[index],
          builder: (context, child) {
            return Opacity(
              opacity: _charAnimations[index].value,
              child: Text(
                widget.text[index],
                style: widget.textStyle,
              ),
            );
          },
        );
      }),
    );
  }
}