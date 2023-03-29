import 'package:flutter/material.dart';
import 'package:ticket_app_web/pages/auth/login_page/widgets/login_form_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 500,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // form title
          const Text(
            'Logowanie',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          LoginForm(),
        ]),
      ),
    ));
  }
}
