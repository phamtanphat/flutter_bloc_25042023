import 'dart:async';

import 'package:flutter_bloc_25042023/count_event.dart';

class CountBloc {
  final StreamController<int> _countController = StreamController();
  final StreamController<CountEvent> _eventController = StreamController();
  int _total = 0;

  Stream<int> getCountStream() => _countController.stream;

  CountBloc() {
    _countController.sink.add(0);
    _eventController.stream.listen((event) {
        if (event is IncreaseEvent) {
          handleIncreaseEvent(event);
        }
    });
  }

  void addEvent(CountEvent countEvent) {
    _eventController.sink.add(countEvent);
  }

  void handleIncreaseEvent(IncreaseEvent event) {
    _total += event.value;
    _countController.sink.add(_total);
  }

}