import 'package:casa_salud_del_llano_app/gui/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _body(context),
    );
  }

  Widget _body(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Total tiendas: 4"),
          const SizedBox(height: 20.0),
          const Text("Total productos: 100"),
          const SizedBox(height: 20.0),
          const Text("Total productos en tiendas: 300"),
          const SizedBox(height: 20.0),
          PrimaryButton(text: 'Tiendas', onPressed: () => Navigator.pushNamed(context, 'stores')),
          const SizedBox(height: 20.0),
          PrimaryButton(text: 'Productos', onPressed: () => Navigator.pushNamed(context, 'products'))
        ],
      ),
    );
  }

}