import 'package:flutter/material.dart';

class StoresView extends StatelessWidget {
  const StoresView({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Droguerías"),
      ),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add
        ),
        onPressed: () => Navigator.pushNamed(context, 'newStore'),
      ),
    );
  }

  Widget _body() {
    return ListView(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(left: 23.0, right: 20.0),
          title: const Text("Aguazul Casanare"),
          subtitle: const Text("Carrera 4"),
          trailing: const Icon(
            Icons.chevron_right_rounded,
            size: 30.0,
          ),
          onTap: () {},
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 23.0, right: 20.0),
          title: const Text("Pararito"),
          subtitle: const Text("Carrera 4"),
          trailing: const Icon(
            Icons.chevron_right_rounded,
            size: 30.0,
          ),
          onTap: () {},
        ),
        ListTile(
          contentPadding: const EdgeInsets.only(left: 23.0, right: 20.0),
          title: const Text("Yopal"),
          subtitle: const Text("Carrera 4"),
          trailing: const Icon(
            Icons.chevron_right_rounded,
            size: 30.0,
          ),
          onTap: () {},
        ),
      ],
    );
  }
}