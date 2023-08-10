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
    return Column(
      children: [
        PrimaryButton(text: 'Tiendas', onPressed: () => Navigator.pushNamed(context, 'stores'))
      ],
    );
  }

}