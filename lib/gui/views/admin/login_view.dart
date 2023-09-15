import 'package:casa_salud_del_llano_app/gui/app_style.dart';
import 'package:casa_salud_del_llano_app/gui/widgets/curved_login_widget.dart';
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
  bool isLoading = false;

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: _body(),
    );
  }

  Widget _body() {
    Size _media = MediaQuery.of(context).size;
    return SizedBox(
      height: double.infinity,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: _media.width * 1,
                height: _media.height * 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CurvedWidget(
                      curvedDistance: 80.0,
                      curvedHeight: 80.0,
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 100.0, left: 50.0),
                        height: 300.0,
                        color: AppStyle.primaryColor,
                        child: Text("Iniciar sesión", style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 30.0, color: AppStyle.whiteColor),),
                      ),
                    ),
                    // CurvedTest(
                    //   curvedDistance: 80.0,
                    //   curvedHeight: 80.0,
                    //   child: Container(
                    //     width: double.infinity,
                    //     padding: const EdgeInsets.only(top: 100.0, left: 50.0),
                    //     height: 300.0,
                    //     color: AppStyle.primaryColor,
                    //     child: Text("Iniciar sesión", style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 30.0, color: AppStyle.whiteColor),),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Center(
                // margin: const EdgeInsets.only(top: 350.0, right: 28.0, left: 28.0),
                child: Container(
                  width: _media.width * 1,
                  height: _media.height * 1,
                  // color: Colors.red,
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                ),
              ),
              // CurvedWidget(
              //   curvedDistance: 80.0,
              //   curvedHeight: 80.0,
              //   child: Container(
              //     width: double.infinity,
              //     padding: const EdgeInsets.only(top: 100.0, left: 50.0),
              //     height: 300.0,
              //     color: AppStyle.primaryColor,
              //     child: Text("Iniciar sesión", style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 30.0, color: AppStyle.whiteColor),),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(top: 100),
              //   child: CurvedWidget(
              //     curvedDistance: 80.0,
              //     curvedHeight: 80.0
              //   ),
              // )
              
              // Container(
              //   margin: const EdgeInsets.only(top: 300.0, right: 28.0, left: 28.0),
              //   // child: const FormLogin(),
              // )
            ],
          ),
        ),
      )
    );
  }

  // Widget _body() {
  //   Size media = MediaQuery.of(context).size;
  //   return Stack(
  //     children: [
  //       SingleChildScrollView(
  //         child: GestureDetector(
  //           onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
  //           child: Container(
  //             width: media.width * 1,
  //             height: media.height * 1,
  //             padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //             decoration: const BoxDecoration(
  //               color: Color(0xFFf6f7f9)
  //             ),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 CurvedWidget(
  //                   curvedDistance: 80.0,
  //                   curvedHeight: 80.0
  //                 ),
  //                 const SizedBox(),
  //                 const Text("Casa Salud Del Llano", style: TextStyle( fontSize: 25.0, fontWeight: FontWeight.bold),),
  //                 Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     const Text("Usuario"),
  //                     const SizedBox(height: 5.0),
  //                     TextField(
  //                       decoration: InputDecoration(
  //                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
  //                       ),
  //                       controller: userNameController,
  //                       onSubmitted: (String value) {
  //                         debugPrint(value);
  //                       },
  //                       onChanged: (String val) {
  //                         setState(() {
  //                           _isButtonDisabled = validForm();
  //                         });
  //                       },
  //                     ),
  //                     const SizedBox(height: 20.0),
  //                     const Text("Contraseña"),
  //                     const SizedBox(height: 5.0),
  //                     TextFormField(
  //                       obscureText: _passwordVisible,
  //                       enableSuggestions: false,
  //                       autocorrect: false,
  //                       controller: passwordController,
  //                       decoration: InputDecoration(
  //                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
  //                         suffixIcon: IconButton(
  //                           icon: Icon(
  //                             _passwordVisible
  //                             ? Icons.visibility_outlined
  //                             : Icons.visibility_off_outlined
  //                           ),
  //                           onPressed: () {
  //                             setState(() {
  //                               _passwordVisible = !_passwordVisible;
  //                             });
  //                           },
  //                         )
  //                       ),
  //                       onChanged: (String val) {
  //                         setState(() {
  //                           _isButtonDisabled = validForm();
  //                         });
  //                       },
  //                     ),
  //                     const SizedBox(height: 18.0),
  //                     PrimaryButton(
  //                       text: 'Siguiente',
  //                       onPressed: _isButtonDisabled ?  null : () => login(),
  //                     ),
  //                   ],
  //                 ),
  //                 const SizedBox()
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //       isLoading ? Container(
  //         width: double.infinity,
  //         height: media.height * 1,
  //         decoration: BoxDecoration(
  //           color: Colors.white.withOpacity(.5)
  //         ),
  //         child: const Center(
  //           child: CircularProgressIndicator(),
  //         ),
  //       ) : const SizedBox()
  //     ],
  //   );
  // }

  validForm() {
    var userName = userNameController.text.trim();
    var pass = passwordController.text.trim();
    return (userName != '' && pass != '') ?  false : true;
  }

  login() {
    FocusManager.instance.primaryFocus?.unfocus();
    setState(() {
      isLoading = true;
    });
    Future.delayed(
      const Duration(
        seconds: 2
      ), () {
        setState(() {
          isLoading = true;
        });
        Navigator.of(context).pushNamedAndRemoveUntil('dashboard', (route) => false);
      });
  }

}