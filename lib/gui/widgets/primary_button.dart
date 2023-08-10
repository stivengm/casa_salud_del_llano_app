import 'package:flutter/material.dart';

import 'package:casa_salud_del_llano_app/gui/app_style.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final GestureTapCallback? onPressed;
  const PrimaryButton({ Key? key, required this.text, required this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(12.0)),
          foregroundColor: MaterialStateProperty.all<Color>(AppStyle.whiteColor),
          backgroundColor: MaterialStateProperty.all<Color>(AppStyle.primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: const BorderSide(color: AppStyle.primaryColor)
            )
          )
        ),
        onPressed: onPressed,
        child: Text(text, style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppStyle.whiteColor)),
      ),
    );
  }
}