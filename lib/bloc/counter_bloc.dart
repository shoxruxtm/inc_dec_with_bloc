// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterSuccess()) {
    int count = 0;
    on<CountIncrement>((event, emit) {
      count++;
          emit(CounterSuccess(count: count));

    });
    on<CountDecrement>((event, emit) {
      count--;
      emit(CounterSuccess(count: count));

    });
  }
}
