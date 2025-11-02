# Animated Text Kit 2
[![Pub](https://img.shields.io/pub/v/animated_text_kit2.svg)](https://pub.dev/packages/animated_text_kit2)
[![GitHub](https://img.shields.io/github/license/itsaqibdev/animated_text_kit2)](https://github.com/itsaqibdev/animated_text_kit2)

A powerful and easy-to-use Flutter package that provides more than 18 beautiful animated text widgets to enhance your app's UI. Created with ❤️ by [itsaqibdev](https://github.com/itsaqibdev).

## 🌟 Features

- **18+ Beautiful Animations**: From simple fade effects to complex 3D flips
- **Easy to Use**: Simple API with extensive customization options
- **Lightweight**: Optimized for performance
- **Well Tested**: Comprehensive test coverage
- **Flutter Native**: Built with pure Flutter widgets

### Animation Types

| Animation | Preview | Description |
|----------|---------|-------------|
| Typewriter | ✨ | Classic typing effect with cursor |
| Fade | ✨ | Smooth opacity transition |
| Scale | ✨ | Size scaling animation |
| Rotate | ✨ | Rotation effects |
| Zoom | ✨ | Combined scale and fade |
| Liquid | ✨ | Fluid-like text effects |
| Glitch | ✨ | Digital distortion effects |
| Neon Glow | ✨ | Glowing neon text effects |
| Split Characters | ✨ | Character-by-character animation |
| Word-by-Word | ✨ | Word reveal animations |
| Paragraph Reveal | ✨ | Full paragraph sliding effects |
| Wave | ✨ | Sine wave text motion |
| Rainbow | ✨ | Colorful gradient cycling |
| Bounce | ✨ | Physics-based bouncing |
| Elastic | ✨ | Stretchy elastic effects |
| Spring | ✨ | Spring-like motion |
| 3D Flip | ✨ | Three-dimensional flipping |
| Matrix Fall | ✨ | Character falling like Matrix code |

## 🚀 Getting Started

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  animated_text_kit2: ^0.0.1
```

### ⬇️ Installation

```bash
flutter pub add animated_text_kit2
```

or

```bash
flutter pub get
```

### 📦 Import

```dart
import 'package:animated_text_kit2/animated_text_kit2.dart';
```

## 🎯 Usage Examples

### 1. Typewriter Animation
```dart
TypewriterAnimatedText(
  text: 'Hello, World!',
  textStyle: TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  ),
  duration: Duration(milliseconds: 500),
  showCursor: true,
)
```

### 2. Fade Animation
```dart
FadeAnimatedText(
  text: 'Fade In Text',
  duration: Duration(seconds: 2),
  textStyle: TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  ),
)
```

### 3. Scale Animation
```dart
ScaleAnimatedText(
  text: 'Scaling Text',
  duration: Duration(seconds: 2),
  textStyle: TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  ),
  startScale: 0.0,
  endScale: 1.0,
)
```

### 4. Rainbow Color Animation
```dart
RainbowColorAnimatedText(
  text: 'Rainbow Text',
  duration: Duration(seconds: 3),
  textStyle: TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  ),
)
```

> 💡 **Pro Tip**: All animations support custom `duration`, `textStyle`, and `delay` parameters for fine-tuning.

## 🧪 Example App

Check out the [example](example/lib/main.dart) directory for a complete Flutter app demonstrating all 18+ animations with customization options.

To run the example:
```bash
cd example
flutter pub get
flutter run
```

## 📋 API Reference

Each animation widget supports these common properties:

| Property | Type | Description | Default |
|----------|------|-------------|---------|
| `text` | `String` | Text to animate | Required |
| `duration` | `Duration` | Animation duration | `Duration(milliseconds: 1000)` |
| `textStyle` | `TextStyle?` | Text styling | `null` |
| `delay` | `Duration` | Delay before animation starts | `Duration.zero` |

Some widgets have additional properties specific to their animation type. Check individual widget documentation for details.

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Development Setup
```bash
flutter pub get
flutter test
```

## 👨‍💻 Author

**itsaqibdev** - *Flutter Developer* - [GitHub](https://github.com/itsaqibdev)

[![GitHub followers](https://img.shields.io/github/followers/itsaqibdev?style=social)](https://github.com/itsaqibdev)
[![Twitter Follow](https://img.shields.io/twitter/follow/itsaqibdev?style=social)](https://twitter.com/itsaqibdev)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by the original animated_text_kit package
- Built with ❤️ for the Flutter community
- Special thanks to all contributors and users

## 📞 Support

If you have any questions or need help:

- Create an [issue](https://github.com/itsaqibdev/animated_text_kit2/issues)
- Reach out on [Twitter](https://twitter.com/itsaqibdev)
- Check the [documentation](#)

## ⭐ Show Your Support

If you like this package, please give it a star on [GitHub](https://github.com/itsaqibdev/animated_text_kit2) and upvote on [pub.dev](https://pub.dev/packages/animated_text_kit2)!
