import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Productos"),
      ),
      body: const Placeholder(),
    );
  }
}