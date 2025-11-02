import 'package:flutter/material.dart';
import 'widgets/typewriter.dart';
import 'widgets/fade.dart';
import 'widgets/scale.dart';
import 'widgets/rotate.dart';
import 'widgets/zoom.dart';
import 'widgets/liquid_text.dart';
import 'widgets/glitch_text.dart';
import 'widgets/neon_glow_text.dart';
import 'widgets/split_characters_animate.dart';
import 'widgets/word_by_word_animation.dart';
import 'widgets/paragraph_reveal.dart';
import 'widgets/wave_text.dart';
import 'widgets/rainbow_color_animation.dart';
import 'widgets/bounce_effect.dart';
import 'widgets/elastic_effect.dart';
import 'widgets/spring_effect.dart';
import 'widgets/flip_text.dart';
import 'widgets/matrix_fall_down.dart';

/// Main entry point for AnimatedTextKit2
///
/// Usage:
/// ```dart
/// AnimatedTextKit2.Typewriter(
///   text: 'Hello World',
///   duration: Duration(milliseconds: 500),
/// )
/// ```
class AnimatedTextKit2 {
  AnimatedTextKit2._();

  /// Typewriter animation with cursor effects and variable typing speed
  static TypewriterAnimatedText Typewriter({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 500),
    TextStyle? textStyle,
    bool showCursor = true,
    Widget? cursor,
    Duration cursorBlinkInterval = const Duration(milliseconds: 500),
    double speedFactor = 1.0,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => TypewriterAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    showCursor: showCursor,
    cursor: cursor,
    cursorBlinkInterval: cursorBlinkInterval,
    speedFactor: speedFactor,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Fade animation
  static FadeAnimatedText Fade({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => FadeAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Scale animation
  static ScaleAnimatedText Scale({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    double startScale = 0.0,
    double endScale = 1.0,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => ScaleAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    startScale: startScale,
    endScale: endScale,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Rotate animation
  static RotateAnimatedText Rotate({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    double startAngle = 0.0,
    double endAngle = 2 * 3.14159,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => RotateAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    startAngle: startAngle,
    endAngle: endAngle,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Zoom animation (combination of scale and fade)
  static ZoomAnimatedText Zoom({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    double startScale = 0.0,
    double endScale = 1.0,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => ZoomAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    startScale: startScale,
    endScale: endScale,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Liquid text animation
  static LiquidAnimatedText Liquid({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1500),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => LiquidAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Glitch text animation
  static GlitchAnimatedText Glitch({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 2000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    int glitchCount = 5,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => GlitchAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    glitchCount: glitchCount,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Neon glow text animation
  static NeonGlowAnimatedText NeonGlow({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1500),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    Color glowColor = Colors.cyan,
    double blurRadius = 10.0,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => NeonGlowAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    glowColor: glowColor,
    blurRadius: blurRadius,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Split characters animation
  static SplitCharactersAnimatedText SplitCharacters({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    Duration characterDelay = const Duration(milliseconds: 100),
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => SplitCharactersAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    characterDelay: characterDelay,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Word-by-word animation
  static WordByWordAnimatedText WordByWord({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    Duration wordDelay = const Duration(milliseconds: 300),
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => WordByWordAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    wordDelay: wordDelay,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Paragraph reveal animation
  static ParagraphRevealAnimatedText ParagraphReveal({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 2000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => ParagraphRevealAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Wave text animation
  static WaveAnimatedText Wave({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 2000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    double amplitude = 10.0,
    double frequency = 1.0,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => WaveAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    amplitude: amplitude,
    frequency: frequency,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Rainbow color animation
  static RainbowColorAnimatedText Rainbow({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 2000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => RainbowColorAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Bounce effect animation
  static BounceAnimatedText Bounce({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    double bounceHeight = 20.0,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => BounceAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    bounceHeight: bounceHeight,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Elastic effect animation
  static ElasticAnimatedText Elastic({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1500),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    double scaleAmount = 0.2,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => ElasticAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    scaleAmount: scaleAmount,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Spring effect animation
  static SpringAnimatedText Spring({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1500),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    double scaleAmount = 0.3,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => SpringAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    scaleAmount: scaleAmount,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// 3D Flip text animation
  static FlipAnimatedText Flip({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 1500),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    Axis flipAxis = Axis.horizontal,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => FlipAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    flipAxis: flipAxis,
    textAlign: textAlign,
    repeat: repeat,
  );

  /// Matrix-style fall-down animation
  static MatrixFallDownAnimatedText MatrixFall({
    Key? key,
    required String text,
    Duration duration = const Duration(milliseconds: 2000),
    TextStyle? textStyle,
    Duration delay = Duration.zero,
    double fallDistance = 100.0,
    TextAlign textAlign = TextAlign.start,
    bool repeat = false,
  }) => MatrixFallDownAnimatedText(
    key: key,
    text: text,
    duration: duration,
    textStyle: textStyle,
    delay: delay,
    fallDistance: fallDistance,
    textAlign: textAlign,
    repeat: repeat,
  );
}
