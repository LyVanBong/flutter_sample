import 'package:flutter/material.dart';
import 'package:flutter_sample/bloc/login_state.dart';

import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var loginBloc = LoginBloc();
  void onPressed() {
    loginBloc.send(LoginEvent.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Login Screen')),
        body: StreamBuilder(
          builder: (context, snapshot) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (snapshot.data!.isLoading)
                    const CircularProgressIndicator()
                  else if (snapshot.data!.isFailure)
                    const Text('Login Failure')
                  else
                    const Text('Login Success'),
                  ElevatedButton(
                      onPressed: onPressed, child: const Text('Click Me'))
                ],
              ),
            );
          },
          stream: loginBloc.state,
          initialData: LoginState.initial(),
        ));
  }
}
