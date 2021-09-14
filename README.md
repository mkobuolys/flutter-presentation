# Let me introduce you to Flutter

A presentation about Flutter. Implemented in Flutter. Neat.

![Repository header](header.png)

## Features

- Different slide templates
- Some slides contain the actual interactive app samples running on the slide
- Change slides using keyboard shortcuts (alt/option + arrow keys)
- Image carousel
- YouTube video support
- Webview support
- Some Easter eggs

## To-do

- Fix layout/overflow issues - the presentation does not look very nice on smaller screens. For now, a trivial workaround is to zoom out the browser window.
- Create a landing/initial page where you can see thumbnails of all the available slides. From there, you should be able to select/reorder them and generate the presentation. The main goal is to have a library of different slides, so you could build the specific presentation based on your audience/topic.

## Building

You can follow these instructions to build and run the app.

### Prerequisites

If you are new to Flutter, please first follow the [Flutter Setup](https://flutter.dev/setup/) guide.

### Building and running the presentation

```
git clone https://github.com/mkobuolys/flutter-presentation.git
cd flutter-presentation
flutter pub get
flutter run
```

The `flutter run` command both builds and runs the Flutter app.
