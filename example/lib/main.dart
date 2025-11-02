import 'package:animated_text_kit2/animated_text_kit2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated Text Kit 2 Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AllAnimationsScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AllAnimationsScreen extends StatelessWidget {
  const AllAnimationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text Kit 2 - All Animations'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'All Animations Demo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Each animation is labeled for easy identification',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 6,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildAnimationCard(
                  context,
                  '1. Typewriter (Repeat)',
                  AnimatedTextKit2.Typewriter(
                    text: 'Typewriter Effect',
                    textStyle: GoogleFonts.archivoBlack(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(milliseconds: 2000),
                    showCursor: true,
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '2. Fade (Repeat)',
                  AnimatedTextKit2.Fade(
                    text: 'Fade In Effect',
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '3. Scale (Repeat)',
                  AnimatedTextKit2.Scale(
                    text: 'Scale Effect',
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    startScale: 0.0,
                    endScale: 1.0,
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '4. Rotate (Repeat)',
                  AnimatedTextKit2.Rotate(
                    text: 'Rotate Effect',
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    startAngle: 0.0,
                    endAngle: 2 * 3.14159,
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '5. Zoom (Repeat)',
                  AnimatedTextKit2.Zoom(
                    text: 'Zoom Effect',
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    startScale: 0.0,
                    endScale: 1.0,
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '6. Liquid',
                  AnimatedTextKit2.Liquid(
                    text: 'Liquid Effect',
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '7. Glitch',
                  AnimatedTextKit2.Glitch(
                    text: 'Glitch Effect',
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '8. Neon Glow',
                  AnimatedTextKit2.NeonGlow(
                    text: 'Neon Glow Effect',
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    glowColor: Colors.cyan,
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '9. Split Characters',
                  AnimatedTextKit2.SplitCharacters(
                    text: 'Split Chars',
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '10. Word by Word',
                  AnimatedTextKit2.WordByWord(
                    text: 'Word by Word',
                    textStyle: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 3),
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '11. Paragraph Reveal',
                  AnimatedTextKit2.ParagraphReveal(
                    text:
                        'Paragraph Reveal Effect with longer text to demonstrate the animation',
                    textStyle: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 3),
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '12. Wave (Repeat)',
                  AnimatedTextKit2.Wave(
                    text: 'Wave Effect',
                    textStyle: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    amplitude: 10.0,
                    frequency: 1.0,
                    repeat: true,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '13. Rainbow',
                  AnimatedTextKit2.Rainbow(
                    repeat: true,
                    text: 'Rainbow Effect',
                    textStyle: GoogleFonts.archivo(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 3),
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '14. Bounce',
                  AnimatedTextKit2.Bounce(
                    repeat: true,
                    text: 'Bounce Effect',
                    textStyle: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    bounceHeight: 20.0,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '15. Elastic',
                  AnimatedTextKit2.Elastic(
                    repeat: true,
                    text: 'Elastic Effect',
                    textStyle: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    scaleAmount: 0.2,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '16. Spring',
                  AnimatedTextKit2.Spring(
                    repeat: true,
                    text: 'Spring Effect',
                    textStyle: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                    scaleAmount: 0.3,
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '17. Flip',
                  AnimatedTextKit2.Flip(
                    repeat: true,
                    text: 'Flip Effect',
                    textStyle: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 2),
                  ),
                ),
                _buildAnimationCard(
                  context,
                  '18. Matrix Fall',
                  AnimatedTextKit2.MatrixFall(
                    repeat: true,
                    text: 'Matrix Fall',
                    textStyle: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    duration: const Duration(seconds: 3),
                    fallDistance: 100.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimationCard(
    BuildContext context,
    String title,
    Widget animation,
  ) {
    // Define different colors for each card
    List<Color> cardColors = [
      Colors.pink[50]!,
      Colors.blue[50]!,
      Colors.green[50]!,
      Colors.orange[50]!,
      Colors.purple[50]!,
      Colors.red[50]!,
      Colors.teal[50]!,
      Colors.amber[50]!,
      Colors.cyan[50]!,
      Colors.lime[50]!,
      Colors.indigo[50]!,
      Colors.deepOrange[50]!,
      Colors.lightBlue[50]!,
      Colors.lightGreen[50]!,
      Colors.yellow[50]!,
      Colors.brown[50]!,
      Colors.grey[300]!,
      Colors.deepPurple[50]!,
    ];

    // Get index from title (e.g., '1. Typewriter' -> index 0)
    int index = int.tryParse(title.split('.')[0]) ?? 0;
    if (index > 0) index = index - 1;
    if (index >= cardColors.length) index = 0;

    return Card(
      elevation: 4.0,
      color: cardColors[index],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 12),
            Expanded(child: Center(child: animation)),
          ],
        ),
      ),
    );
  }
}
