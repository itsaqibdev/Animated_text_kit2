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
              'Typewriter Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const TypewriterAnimatedText(
              text: 'Hello, World!',
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Fade Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const FadeAnimatedText(
              text: 'Fade In Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Scale Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ScaleAnimatedText(
              text: 'Scaling Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Rotate Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const RotateAnimatedText(
              text: 'Rotating Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Zoom Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ZoomAnimatedText(
              text: 'Zoom Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Liquid Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const LiquidAnimatedText(
              text: 'Liquid Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Glitch Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const GlitchAnimatedText(
              text: 'Glitch Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Neon Glow Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const NeonGlowAnimatedText(
              text: 'Neon Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Split Characters Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SplitCharactersAnimatedText(
              text: 'Split Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Word-by-Word Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const WordByWordAnimatedText(
              text: 'Word by Word Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Paragraph Reveal Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ParagraphRevealAnimatedText(
              text: 'This is a paragraph reveal animation example.',
              duration: Duration(seconds: 3),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Wave Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const WaveAnimatedText(
              text: 'Wave Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Rainbow Color Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const RainbowColorAnimatedText(
              text: 'Rainbow Text',
              duration: Duration(seconds: 3),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Bounce Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const BounceAnimatedText(
              text: 'Bounce Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Elastic Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ElasticAnimatedText(
              text: 'Elastic Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Spring Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SpringAnimatedText(
              text: 'Spring Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Flip Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const FlipAnimatedText(
              text: 'Flip Text',
              duration: Duration(seconds: 2),
              textStyle: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Matrix Fall Down Animation:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const MatrixFallDownAnimatedText(
              text: 'Matrix Text',
              duration: Duration(seconds: 3),
              textStyle: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}