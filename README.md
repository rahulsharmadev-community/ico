# ico 

[![Pub](https://img.shields.io/pub/v/ico?color=blue)](https://pub.dartlang.org/packages/ico)
[![Licence](https://img.shields.io/github/license/rahulsharmadev-community/ico)](https://pub.dev/packages/ico/license)

## Platform Support

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: | :-: | :---: | :-----: |
|   ✅    | ✅  |  ✅   | ✅  |  ✅   |   ✅    |

![](https://raw.githubusercontent.com/rahulsharmadev-community/ico/beta/assets/Thumbnail.png)

The Ico pack available as set of Flutter Icons.

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
dependencies:
  ico: <latest_version>
```
## Ico Class Usage
### Icon names

Icon names equal those on the [official website](https://github.com/rahulsharmadev-community/ico), but are written in lower camel case.

### Examples:
Icon name | Code | Style
--- | --- | ---
gamepad_filled | `Ico.gamepad_filled` | solid
printer_filled | `Ico.printer_filled` | filled
microphone_outline |  `Ico.microphone_outline` | outlined

```dart
import 'package:ico/ico.dart';
class MyWidget extends StatelessWidget {
// Use the Default Icon Widget + Ico class for the IconData
  Widget build(BuildContext context) {
    return Icon(Ico.processor_outline);
  }
}
```

## IcoG Class Usage
* `shadows` → A list of [Shadow]s that will be painted underneath the text.\
Multiple shadows are supported to replicate lighting from multiple light sources.
* `gradient` → Creates a custom gradient. By useing LinearGradient, RadialGradient, SweepGradient

### Examples:
   ```dart
    // Render a Gradient Icon on the screen
    IcoG(
          Ico.apple_filled,
          size: 200,
          colors: icogGlobalWarming,
          shadows: [
            Shadow(color: Colors.black, blurRadius: 3, offset: Offset(2, 2))
          ],
        );
```

![](https://raw.githubusercontent.com/rahulsharmadev-community/ico/beta/assets/vs.png)