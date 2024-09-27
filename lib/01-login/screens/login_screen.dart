import 'package:flutter/material.dart';
import 'package:integra_espoir/config/widgets.dart';

class LoginScreen extends StatelessWidget {
  static const nameScreen = 'loginScreen';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/login_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: FormularioLoginWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
