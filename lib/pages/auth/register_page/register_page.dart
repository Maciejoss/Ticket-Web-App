import 'package:flutter/material.dart';
import 'package:ticket_app_web/pages/auth/register_page/widgets/register_form_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 500,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // form title
          const Text(
            'Rejestracja',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          RegisterForm(),
        ]),
      ),
    ));
  }
}
