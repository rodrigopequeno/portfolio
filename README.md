# [Portfolio](https://rodrigopequeno.github.io/)

Personal portfolio website developed with Flutter Web showcasing professional experience, education, skills, and projects.

## Features

- 🌍 **Internationalization**: Support for English and Portuguese (pt-BR)
- 📱 **Responsive Design**: Optimized for desktop and mobile viewing
- 🎨 **Modern UI**: Clean and professional interface
- 🚀 **Fast Performance**: Built with Flutter Web for smooth navigation
- 📊 **Skills Visualization**: Interactive circular progress indicators

## Tech Stack

### Core
- [Flutter](https://flutter.dev/) - UI framework for building beautiful native apps
- [Dart](https://dart.dev/) - Programming language optimized for UI development

### Key Dependencies
| Package | Purpose |
|:--------|:--------|
|[**flutter_modular**](https://pub.dev/packages/flutter_modular)| Routing and dependency injection |
|[**carousel_slider**](https://pub.dev/packages/carousel_slider)| Content carousels for sections |
|[**flutter_svg**](https://pub.dev/packages/flutter_svg)| SVG asset rendering |
|[**auto_size_text**](https://pub.dev/packages/auto_size_text)| Responsive text sizing |
|[**percent_indicator**](https://pub.dev/packages/percent_indicator)| Skill level visualization |
|[**url_launcher**](https://pub.dev/packages/url_launcher)| External link handling |
|[**lint**](https://pub.dev/packages/lint)| Code quality and linting |

### State Management
- **ValueNotifier**: Flutter's built-in reactive state management for locale selection
- **Simple Controllers**: Lightweight classes for navigation and utilities

### Architecture
- **Modular Structure**: Feature-based modules with flutter_modular
- **Custom i18n**: Custom internationalization system supporting multiple languages
- **Responsive Layout**: Adaptive UI for different screen sizes

## Development

### Prerequisites
- Flutter SDK 3.0.0 or higher
- Dart SDK 3.0.0 or higher

### Commands

```bash
# Install dependencies
flutter pub get

# Run in development mode
flutter run -d chrome

# Build for production
flutter build web --release

# Analyze code
flutter analyze
```

## Project Structure

```
lib/
├── app/
│   ├── app_module.dart          # Root module with routes and DI
│   ├── app_widget.dart          # Root widget with MaterialApp
│   ├── feature/
│   │   └── translation/         # Internationalization infrastructure
│   ├── modules/                 # Feature modules
│   │   ├── home/               # Landing page with sections
│   │   ├── projects/           # Portfolio showcase
│   │   └── contact/            # Contact information
│   └── shared/
│       ├── components/         # Reusable UI components
│       ├── settings/           # App settings (locale, theme)
│       └── theme/              # Theme configuration
└── main.dart                   # Application entry point
```

## Built With

- [Flutter](https://flutter.dev/) - Beautiful native apps in record time
- [Visual Studio Code](https://code.visualstudio.com/) - Code editing. Redefined
