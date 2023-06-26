import 'dart:async';

class CounterController {
  StreamController streamController = StreamController();
  Sink get sink => streamController.sink;
  Stream get streamOut => streamController.stream;
  int count = 0;
  increase() {
    count++;
    sink.add(count);
  }

  tru() {
    count--;
    sink.add(count);
  }
}
