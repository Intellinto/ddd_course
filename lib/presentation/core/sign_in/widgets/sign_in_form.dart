import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_firebase_ddd_course/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
      // TODO: implement listener
    }, builder: (context, state) {
      return Form(
        child: ListView(
          children: [
            const Text(
              '📒',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 130),
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              autocorrect: false,
              obscureText: true,
            )
          ],
        ),
      );
    });
  }
}
