abstract class CountEvent { }

class IncreaseEvent extends CountEvent {
  int value;

  IncreaseEvent({required this.value});
}
