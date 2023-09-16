import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: media.height * 1,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.5)
      ),
      child: Center(
        child: (Platform.isAndroid) ? const CircularProgressIndicator() : const CupertinoActivityIndicator(),
      ),
    );
  }
}