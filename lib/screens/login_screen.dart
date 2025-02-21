import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pmsn2025/utils/global_values.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isValidating = false;

  @override
  Widget build(BuildContext context) {
    final txtUser = TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Introduce tu usuario',
        labelText: 'Usuario',
        border: OutlineInputBorder(),
      ),
    );

    final txtPassword = TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Introduce tu constraseña',
        labelText: 'Contraseña',
        border: OutlineInputBorder(),
      ),
    );

    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fondo.jpg'),
          opacity: 0.7,
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 250,
              child: ValueListenableBuilder(
                valueListenable: GlobalValues.isValidating,
                builder: (context, value, _) {
                  return value
                      ? const CircularProgressIndicator()
                      : Container();
                },
              )),
          Positioned(
            top: 200,
            child: Lottie.asset("assets/animation_tecnm.json", height: 200),
          ),
          Positioned(
            bottom: 50,
            child: Container(
                padding: const EdgeInsets.all(20),
                height: 250,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(children: [
                  txtUser,
                  SizedBox(height: 10),
                  txtPassword,
                  GestureDetector(
                    onTap: () {
                      // isValidating = true;
                      GlobalValues.isValidating.value = true;
                      Future.delayed(const Duration(seconds: 4)).then((value) {
                        GlobalValues.isValidating.value = false;
                        Navigator.pushNamed(context, '/dashboard');
                      });
                    },
                    /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListStudentsScreen()))*/

                    child: Image.asset(
                      'assets/icon_button.png',
                      height: 80,
                    ),
                  )
                ])),
          )
        ],
      ),
    ));
  }
}
