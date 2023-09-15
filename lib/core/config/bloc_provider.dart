import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:casa_salud_del_llano_app/core/blocs/stors/stors_bloc.dart';

final List<BlocProvider> providerBloc = [
  BlocProvider<StorsBloc>(create: (_) => StorsBloc()),
];