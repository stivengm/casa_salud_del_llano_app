import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:casa_salud_del_llano_app/core/models/stors_model.dart';
import 'package:http/http.dart' as http;

part 'stors_event.dart';
part 'stors_state.dart';

class StorsBloc extends Bloc<StorsEvent, StorsState> {
  StorsBloc() : super(const StorsState()) {
    on<HandleStors>((event, emit) {
      emit( state.copyWith( stors: event.stors ) );
    });
  }

  Future getStors() async {
    var url = Uri.https("casa-salud-del-llano-default-rtdb.firebaseio.com", 'drugStores.json');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonStors = jsonDecode(response.body);
      final List<StorsModel> stors = jsonStors.map<StorsModel>((m) => StorsModel.fromJson(Map<String, dynamic>.from(m))).toList();
      add( HandleStors(stors) );
    }
  }
}
