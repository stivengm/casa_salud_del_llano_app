import 'package:flutter/material.dart';

import 'package:casa_salud_del_llano_app/core/blocs/stors/stors_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoresView extends StatelessWidget {
  const StoresView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StorsBloc, StorsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Droguerías"),
          ),
          body: state.stors!.isNotEmpty
          ? ListView.builder(
            itemCount: state.stors!.length,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: const EdgeInsets.only(left: 23.0, right: 20.0),
                title: Text(state.stors![index].name),
                subtitle: Text(state.stors![index].address),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  size: 30.0,
                ),
                onTap: () => Navigator.pushNamed(context, 'infoStore'),
              );
            },
          )
          : const Text("no hay tiendas"),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => Navigator.pushNamed(context, 'newStore'),
          ),
        );
      },
    );
  }
}
