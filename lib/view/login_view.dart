import 'package:dental_control/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height-20,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Center(
                child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
            Text('Log In', style: GoogleFonts.roboto(fontSize: 56.25)),

              TextFormField(
                decoration: CustomInput.loginInputDecoratoin(
                  hint: 'Correo',
                  label: 'Correo',
                  icon: Icons.email_outlined,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: CustomInput.loginInputDecoratoin(
                  hint: 'Contraseña',
                  label: 'Contraseña',
                  icon: Icons.password_outlined,
                  suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye))
                ),
              ),
            ]))),
          ],
        ));
  }
}
