import 'package:flutter/material.dart';

import 'package:casa_salud_del_llano_app/gui/widgets/primary_button.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DrawerHeader(
            child: CircleAvatar(
              radius: 80,
              child: ClipOval(
                child: Image.asset('assets/casa_salud_del_llano.jpg'),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: const Text("Droguerías"),
                  trailing: const Icon(
                    Icons.chevron_right_rounded,
                    size: 30.0,
                  ),
                  onTap: () => Navigator.popAndPushNamed(context, 'stores'),
                ),
                ListTile(
                  title: const Text("Productos"),
                  trailing: const Icon(
                    Icons.chevron_right_rounded,
                    size: 30.0,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text("Agregar usuarios"),
                  trailing: const Icon(
                    Icons.chevron_right_rounded,
                    size: 30.0,
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: PrimaryButton(text: 'Cerrar sesión', onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('login', (route) => false)),
          )
        ],
      ),
    );
  }
}