import 'dart:async';

/// 
class Debounce {
  Timer _timer;

  /// Call this intance as a function
  void call(Duration d, Function fn) {
    cancel();
    _timer = Timer(d, () => fn());
  }

  void cancel() {
    _timer?.cancel();
    _timer = null;
  }
}
