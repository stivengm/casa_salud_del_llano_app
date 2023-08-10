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
          Container(
            width: double.infinity,
            // color: Colors.tealAccent,
            child: const DrawerHeader(
              child: CircleAvatar(),
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
                  onTap: () {},
                ),
                ListTile(
                  title: Text("Productos"),
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
            child: PrimaryButton(text: 'Cerrar sesión', onPressed: () { }),
          )
        ],
      ),
    );
  }
}