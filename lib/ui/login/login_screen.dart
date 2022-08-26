import 'package:flutter/material.dart';

import '../../utils/custom_colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final userName = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(height: 50),
              Image.asset(
                'assets/images/icon_app.png',
                alignment: Alignment.topCenter,
                fit: BoxFit.scaleDown,
                height: 128,
              ),
              Container(height: 10),
              const Text(
                'Planta Física',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(50),
                child: Column(children: [
                  _TextField(
                      userName,
                      "Usuario",
                      "Introduce número de empleado",
                      Icons.supervised_user_circle),
                  Container(height: 50),
                  _TextField(password, "Contraseña", "Introduce tu contraseña",
                      Icons.key_off_outlined),
                  Container(height: 50),
                  _Btn_Continuar(userName, password),
                ]),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: <Widget>[_Footer()],
    );
  }
}

Widget _TextField(
    TextEditingController controller, labelText, hintText, IconData icon) {
  return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText, //babel text
        hintText: hintText, //hint text
        prefixIcon: Icon(
          icon,
          color: CustomColors.dartMainColor,
        ), //prefix iocn
        hintStyle: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold), //hint text style
        labelStyle: TextStyle(
            fontSize: 13, color: CustomColors.dartMainColor), //label style
      ));
}

Widget _Btn_Continuar(
  TextEditingController userName,
  TextEditingController password,
) {
  return ElevatedButton(
    onPressed: () {
      print("userName: " + userName.text);
      print("password: " + password.text);
    },
    child: Text('Continuar'),
    style: ElevatedButton.styleFrom(
      primary: CustomColors.dartMainColor, // background
      onPrimary: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // <-- Radius
      ),
    ),
  );
}

Widget _Footer() {
  return Container(
    color: Colors.black,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
            child: new Text(
          "Prolongación paseo de la reforma 880, Lomas Santa Fe, México CP.01219, Ciudad de México, Tel.+52(55)5950-4000 y 7177-4400 ext- 4547 / Lada nacional sin costo:01 800 627-7615",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ))
      ],
    ),
  );
}
