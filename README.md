# dart_debounce_throttle

Simple debounce and throttle for dart (flutter)

## Usage

```dart
import 'dart:async';
import 'dart_debounce_throttle/dart_debounce_throttle.dart';

void main() {
  final debounce = Debounce();
  final throttle = Throttle();

  int i = 0;
  Timer.periodic(Duration(milliseconds: 100), (timer) {
    i++;
    debounce(Duration(milliseconds: 200), () => print("DEBOUNCE-- $i"));
    throttle(Duration(milliseconds: 200), () => print("THROTTLE-- $i"));
  });
}
```
