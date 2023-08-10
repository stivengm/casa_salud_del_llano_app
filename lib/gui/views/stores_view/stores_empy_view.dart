import 'package:flutter/material.dart';

class StoresEmpyView extends StatelessWidget {
  const StoresEmpyView({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("No se encontraron droguerías", style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}