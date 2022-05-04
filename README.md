# ico 
[![Pub](https://img.shields.io/pub/v/font_awesome_flutter.svg)](https://pub.dartlang.org/packages/ico)

![](https://scontent-del1-1.xx.fbcdn.net/v/t39.30808-6/279285238_1070053346942052_2254837341283123683_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=730e14&_nc_ohc=beS7oa-Q0toAX-OOW1T&tn=_tFtw77dv8rT_MrA&_nc_ht=scontent-del1-1.xx&oh=00_AT-1gxhZ2wvRlxtAPYFLBCwOg6ME1TLx-rRc83jlk4v1Jw&oe=6277BFDD)

The Ico pack available as set of Flutter Icons.

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
dependencies:
  ico: <latest_version>
```

## Usage

```dart
import 'package:ico/ico.dart';
class MyWidget extends StatelessWidget {
// Use the Default Icon Widget + Ico class for the IconData
  Widget build(BuildContext context) {
    return Icon(Ico.processor_outline);
  }
}
```
## Icon names

Icon names equal those on the [official website](https://github.com/rahulsharmadev-community/ico), but are written in lower camel case.

### Examples:
Icon name | Code | Style
--- | --- | ---
gamepad_filled | `Ico.gamepad_filled` | solid
printer_filled | `Ico.printer_filled` | filled
microphone_outline |  `Ico.microphone_outline` | outlined

## Example App

View the Flutter app in the `example` directory to see all the available `Ico`.

```dart
import 'package:flutter/material.dart';
import 'package:ico/ico.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Ico Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Using Ico the standard way: injecting the IconData into the Icon object
            Icon(Ico.gamepad_filled),
            Icon(Ico.printer_filled),
            Icon(Ico.microphone_outline),
          ],
        ),
      ),
    );
  }
}
```
