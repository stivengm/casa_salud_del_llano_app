import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Productos"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Acetaminofén"),
            trailing: IconButton(
              icon: const Icon(
                Icons.add
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add
        ),
        onPressed: () {},
      ),
    );
  }
}