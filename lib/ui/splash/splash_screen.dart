import 'package:flutter/material.dart';

import '../../utils/custom_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/icon_app.png',
              alignment: Alignment.topCenter,
              fit: BoxFit.scaleDown,
              height: 128,
            ),
            const Text(
              'Planta Física',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(
                backgroundColor: CustomColors.dartMainColor),
          ],
        ),
      ),
    );
  }
}
