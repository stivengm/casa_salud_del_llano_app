import 'package:casa_salud_del_llano_app/gui/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({ Key? key }) : super( key: key );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  Widget _body(context) {
    Size media = MediaQuery.of(context).size;
    return Stack(
      children: [
        SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Container(
              width: media.width * 1,
              height: media.height * 1,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Color(0xFFf6f7f9)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(),
                  const Text("Casa Salud Del Llano", style: TextStyle( fontSize: 25.0, fontWeight: FontWeight.bold),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Usuario"),
                      const SizedBox(height: 5.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        // controller: _controller,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                      ),
                      const SizedBox(height: 20.0),
                      const Text("Contraseña"),
                      const SizedBox(height: 5.0),
                      TextFormField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        // validator: (String value) {
                        //   if (value.trim().isEmpty) {
                        //     return 'Password is required';
                        //   }
                        //   return null;
                        // },
                        // controller: _controller,
                        // onSubmitted: (String value) {
                        //   debugPrint(value);
                        // },
                      ),
                      const SizedBox(height: 18.0),
                      PrimaryButton(
                        text: 'Siguiente',
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

}