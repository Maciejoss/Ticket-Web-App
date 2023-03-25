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
        _EmailField(emailController: emailController),
        const SizedBox(height: 10),
        _PasswordField(passwordController: passwordController),
        const SizedBox(height: 25),
        const _LoginButton(),
        const SizedBox(height: 20),
        const _GoToRegisterText(),
      ],
    );
  }
}

class _GoToRegisterText extends StatelessWidget {
  const _GoToRegisterText();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () {
            context.go('/register');
          },
          child: const Text('Nie posiadasz konta? Zarejestruj się.')),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.go('/home');
      },
      child: const Text("Zaloguj się"),
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      decoration: const InputDecoration(
        labelText: "hasło",
        suffixIcon: Icon(CupertinoIcons.eye_slash),
      ),
      obscureText: true,
      validator: (value) {
        return null;
      },
    );
  }
}

class _EmailField extends StatelessWidget {
  const _EmailField({
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      decoration: const InputDecoration(
        labelText: "e-mail",
        suffixIcon: Icon(CupertinoIcons.mail),
      ),
      obscureText: false,
    );
  }
}
