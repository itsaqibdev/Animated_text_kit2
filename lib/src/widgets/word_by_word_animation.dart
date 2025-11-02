import 'package:flutter/material.dart';

/// Word-by-word animation widget
class WordByWordAnimatedText extends StatefulWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final Duration delay;
  final Duration wordDelay;

  const WordByWordAnimatedText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 1000),
    this.textStyle,
    this.delay = Duration.zero,
    this.wordDelay = const Duration(milliseconds: 300),
  });

  @override
  State<WordByWordAnimatedText> createState() => _WordByWordAnimatedTextState();
}

class _WordByWordAnimatedTextState extends State<WordByWordAnimatedText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<AnimationController> _wordControllers;
  late List<Animation<double>> _wordAnimations;
  late List<String> _words;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _wordControllers = [];
    _wordAnimations = [];
    _words = widget.text.split(' ');

    // Create controllers for each word
    for (int i = 0; i < _words.length; i++) {
      AnimationController wordController =
          AnimationController(duration: widget.duration, vsync: this);
      _wordControllers.add(wordController);
      _wordAnimations.add(Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: wordController, curve: Curves.easeInOut),
      ));

      // Start animation with delay for each word
      Future.delayed(
          widget.delay + Duration(milliseconds: i * widget.wordDelay.inMilliseconds),
          () {
        if (mounted) {
          wordController.forward();
        }
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    for (var controller in _wordControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(_words.length, (index) {
        return AnimatedBuilder(
          animation: _wordAnimations[index],
          builder: (context, child) {
            return Opacity(
              opacity: _wordAnimations[index].value,
              child: Text(
                '${_words[index]}${index < _words.length - 1 ? ' ' : ''}',
                style: widget.textStyle,
              ),
            );
          },
        );
      }),
    );
  }
}