import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'stors_event.dart';
part 'stors_state.dart';

class StorsBloc extends Bloc<StorsEvent, StorsState> {
  StorsBloc() : super(const StorsState()) {
    on<StorsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
