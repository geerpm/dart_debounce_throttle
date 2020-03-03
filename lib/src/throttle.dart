import 'dart:async';

///
class Throttle {
  // Interval timer
  Timer _interval;

  // To execute next timing
  Function _nextFn;

  /// Call this intance as a function
  void call(Duration d, Function fn) {
    if (_interval != null) {
      _nextFn = fn;
      return;
    }

    _interval = Timer.periodic(d, (timer) {
      if (_nextFn == null) {
        cancel();
        return;
      }
      _nextFn();
      _nextFn = null;
    });

    fn();
  }

  void cancel() {
    _interval?.cancel();
    _interval = null;
  }
}