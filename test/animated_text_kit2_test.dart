import 'package:flutter_test/flutter_test.dart';
import 'package:animated_text_kit2/animated_text_kit2.dart';

void main() {
  test('TypewriterAnimatedText renders correctly', () {
    expect(
      const TypewriterAnimatedText(text: 'Hello'),
      isNotNull,
    );
  });

  test('FadeAnimatedText renders correctly', () {
    expect(
      const FadeAnimatedText(text: 'Hello'),
      isNotNull,
    );
  });

  test('ScaleAnimatedText renders correctly', () {
    expect(
      const ScaleAnimatedText(text: 'Hello'),
      isNotNull,
    );
  });

  test('RotateAnimatedText renders correctly', () {
    expect(
      const RotateAnimatedText(text: 'Hello'),
      isNotNull,
    );
  });

  test('ZoomAnimatedText renders correctly', () {
    expect(
      const ZoomAnimatedText(text: 'Hello'),
      isNotNull,
    );
  });
}
