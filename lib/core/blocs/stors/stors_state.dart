part of 'stors_bloc.dart';

class StorsState extends Equatable {

  final List<StorsModel>? stors;

  const StorsState({
    stors
  }): stors = stors ?? const [];

  StorsState copyWith({
    List<StorsModel>? stors,
  }) => StorsState(
    stors: stors ?? this.stors
  );
  
  @override
  List<Object?> get props => [ stors ];
}
