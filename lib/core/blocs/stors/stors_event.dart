part of 'stors_bloc.dart';

abstract class StorsEvent extends Equatable {
  const StorsEvent();

  @override
  List<Object> get props => [];
}

class HandleStors extends StorsEvent {
  final List<StorsModel>? stors;
  const HandleStors(this.stors);
}
