import 'package:casa_salud_del_llano_app/gui/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({ Key? key }) : super( key: key );

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _passwordVisible = true;
  bool _isButtonDisabled = true;

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
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
                        controller: userNameController,
                        onSubmitted: (String value) {
                          debugPrint(value);
                        },
                        onChanged: (String val) {
                          setState(() {
                            _isButtonDisabled = validForm();
                          });
                        },
                      ),
                      const SizedBox(height: 20.0),
                      const Text("Contraseña"),
                      const SizedBox(height: 5.0),
                      TextFormField(
                        obscureText: _passwordVisible,
                        enableSuggestions: false,
                        autocorrect: false,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          )
                        ),
                        onChanged: (String val) {
                          setState(() {
                            _isButtonDisabled = validForm();
                          });
                        },
                      ),
                      const SizedBox(height: 18.0),
                      PrimaryButton(
                        text: 'Siguiente',
                        onPressed: _isButtonDisabled ?  null : () => login(),
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

  validForm() {
    var userName = userNameController.text.trim();
    var pass = passwordController.text.trim();
    return (userName != '' && pass != '') ?  false : true;
  }

  login() {
    print("Holaaaaa");
    Navigator.of(context).pushNamedAndRemoveUntil('dashboard', (route) => false);
  }

}