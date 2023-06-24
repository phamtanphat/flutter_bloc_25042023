import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_25042023/demo_bloc_lib/count_event_lib.dart';
import 'package:flutter_bloc_25042023/demo_bloc_lib/count_state_lib.dart';
import 'package:flutter_bloc_25042023/demo_bloc_pattern/count_event.dart';

class CountBlocLib extends Bloc<CountEventLibBase, CountState> {

  CountBlocLib(int number) : super(CountState(value: number)) {
     on<IncreaseEventLib>((event, emit) {
        state.value += event.value;
        emit(state);
     });
  }
}