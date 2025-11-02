import 'package:flutter/material.dart';
import 'package:animated_text_kit2/animated_text_kit2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Text Kit 2 Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text Kit 2'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Typewriter Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const TypewriterAnimatedText(
              text: 'Hello, World!',
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Typewriter Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Typewriter(
              text: 'Hello, World!',
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Fade Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const FadeAnimatedText(
              text: 'Fade In Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Fade Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Fade(
              text: 'Fade In Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Scale Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ScaleAnimatedText(
              text: 'Scaling Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Scale Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Scale(
              text: 'Scaling Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Rotate Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const RotateAnimatedText(
              text: 'Rotating Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Rotate Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Rotate(
              text: 'Rotating Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Zoom Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ZoomAnimatedText(
              text: 'Zoom Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Zoom Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Zoom(
              text: 'Zoom Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Liquid Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const LiquidAnimatedText(
              text: 'Liquid Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Liquid Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Liquid(
              text: 'Liquid Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Glitch Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const GlitchAnimatedText(
              text: 'Glitch Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Glitch Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Glitch(
              text: 'Glitch Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Neon Glow Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const NeonGlowAnimatedText(
              text: 'Neon Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Neon Glow Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.NeonGlow(
              text: 'Neon Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Split Characters Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SplitCharactersAnimatedText(
              text: 'Split Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Split Characters Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.SplitCharacters(
              text: 'Split Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Word-by-Word Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const WordByWordAnimatedText(
              text: 'Word by Word Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Word-by-Word Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.WordByWord(
              text: 'Word by Word Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Paragraph Reveal Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ParagraphRevealAnimatedText(
              text: 'This is a paragraph reveal animation example.',
              duration: Duration(seconds: 3),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Paragraph Reveal Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.ParagraphReveal(
              text: 'This is a paragraph reveal animation example.',
              duration: const Duration(seconds: 3),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Wave Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const WaveAnimatedText(
              text: 'Wave Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Wave Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Wave(
              text: 'Wave Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Rainbow Color Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const RainbowColorAnimatedText(
              text: 'Rainbow Text',
              duration: Duration(seconds: 3),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Rainbow Color Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Rainbow(
              text: 'Rainbow Text',
              duration: const Duration(seconds: 3),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Bounce Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const BounceAnimatedText(
              text: 'Bounce Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Bounce Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Bounce(
              text: 'Bounce Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Elastic Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ElasticAnimatedText(
              text: 'Elastic Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Elastic Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Elastic(
              text: 'Elastic Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Spring Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SpringAnimatedText(
              text: 'Spring Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Spring Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Spring(
              text: 'Spring Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Flip Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const FlipAnimatedText(
              text: 'Flip Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Flip Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.Flip(
              text: 'Flip Text',
              duration: const Duration(seconds: 2),
              textStyle: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Matrix Fall Down Animation (Direct):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const MatrixFallDownAnimatedText(
              text: 'Matrix Text',
              duration: Duration(seconds: 3),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Matrix Fall Down Animation (via AnimatedTextKit2):',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            AnimatedTextKit2.MatrixFall(
              text: 'Matrix Text',
              duration: const Duration(seconds: 3),
              textStyle: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}