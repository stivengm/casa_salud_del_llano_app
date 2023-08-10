import 'package:flutter/material.dart';

import 'package:casa_salud_del_llano_app/gui/widgets/primary_button.dart';

class NewStoreView extends StatefulWidget {
  const NewStoreView({ Key? key }) : super( key: key );

  @override
  State<NewStoreView> createState() => _NewStoreViewState();
}

class _NewStoreViewState extends State<NewStoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 30.0,
          ),
          onPressed: closeNewStore,
        ),
        title: const Text("Nueva droguería"),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Nombre de droguería"),
                const SizedBox(height: 5.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onSubmitted: (String value) {
                    debugPrint(value);
                  },
                ),
                const SizedBox(height: 20.0),
                const Text("Dirección de droguería"),
                const SizedBox(height: 5.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onSubmitted: (String value) {
                    debugPrint(value);
                  },
                ),
                const SizedBox(height: 20.0),
                const Text("Ciudad"),
                const SizedBox(height: 5.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onSubmitted: (String value) {
                    debugPrint(value);
                  },
                ),
                const SizedBox(height: 20.0),
                PrimaryButton(text: 'Guardar', onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }

  closeNewStore() {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Si aceptas no se guardarán cambios de la nueva droguería.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              int count = 0;
              Navigator.of(context).popUntil((_) => count++ >= 2);
            },
            child: const Text('Aceptar'),
          ),
        ],
      )
    );
  }
}