import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../bloc/auth/login/login_cubit.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Column(
            children: [
              _EmailField(
                state: state,
              ),
              const SizedBox(height: 10),
              _PasswordField(state: state),
              const SizedBox(height: 25),
              const _LoginButton(),
              const SizedBox(height: 20),
              const _GoToRegisterText(),
            ],
          );
        },
      ),
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

class _EmailField extends StatelessWidget {
  const _EmailField({
    required this.state,
  });

  final LoginState state;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "e-mail",
        suffixIcon: const Icon(CupertinoIcons.mail),
        errorText: state.email.error?.name,
      ),
      onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
      obscureText: false,
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    required this.state,
  });

  final LoginState state;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "hasło",
        suffixIcon: const Icon(CupertinoIcons.eye_slash),
        errorText: state.password.error?.name,
      ),
      obscureText: true,
      onChanged: (password) =>
          context.read<LoginCubit>().passwordChanged(password),
    );
  }
}
