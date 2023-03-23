import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // email textfield
        TextField(
          controller: emailController,
          decoration: const InputDecoration(
            labelText: "e-mail",
            suffixIcon: Icon(CupertinoIcons.mail),
          ),
          obscureText: false,
        ),

        const SizedBox(height: 10),

        // password textfield
        TextField(
          controller: passwordController,
          decoration: const InputDecoration(
            labelText: "hasło",
            suffixIcon: Icon(CupertinoIcons.eye_slash),
          ),
          obscureText: true,
        ),

        const SizedBox(height: 25),

        // log in button
        ElevatedButton(
          onPressed: () {
            context.go('/home');
          },
          child: const Text("Zaloguj się"),
        ),
        const SizedBox(
          height: 20,
        ),

        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () {
                context.go('/register');
              },
              child: const Text('Nie posiadasz konta? Zarejestruj się.')),
        ),
      ],
    );
  }
}
