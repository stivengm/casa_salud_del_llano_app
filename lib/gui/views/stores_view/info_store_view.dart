import 'package:flutter/material.dart';

import 'package:casa_salud_del_llano_app/gui/app_style.dart';

class InfoStoreView extends StatelessWidget {
  const InfoStoreView({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
              size: 35.0,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.edit_note_outlined,
              size: 35.0,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _body(context),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _body(context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _infoStore(),
            const SizedBox(height: 15.0),
            const Divider(),
            const SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: _header(context),
            ),
            const SizedBox(height: 5.0),
            Column(
              children: [
                ListTile(
                  title: const Text("Drogas"),
                  trailing: const Icon(
                    Icons.edit_note_rounded,
                    size: 30.0,
                  ),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _infoStore() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _richText("Nombre", "Aguazul Casanare"),
          const SizedBox(height: 5.0),
          _richText("Ciudad", "Yopal"),
          const SizedBox(height: 5.0),
          _richText("Dirección", "Carrera 4"),
        ],
      ),
    );
  }

  Widget _richText(String text, String text2) {
    return RichText(
      text: TextSpan(
        text: text,
        style: const TextStyle(fontSize: 17.0, color: AppStyle.kTextColor),
        children: [
          const TextSpan(
            text: ": "
          ),
          TextSpan(
            text: text2,
            style: const TextStyle(color: AppStyle.blackColor, fontWeight: FontWeight.bold)
          )
        ]
      )
    );
  }

  Widget _header(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Productos en droguería", style: Theme.of(context).textTheme.headlineMedium!.copyWith( fontSize: 20.0, color: AppStyle.kTextColor, fontWeight: FontWeight.w600),),
        const Icon(
          Icons.keyboard_arrow_down_outlined
        )
      ],
    );
  }
}