import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_firebase_ddd_course/application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption.fold(
          () {},
          (either) => {
                either.fold(
                    (failure) => {
                          FlushbarHelper.createError(
                            message: failure.map(
                                cancelledByUser: (_) => 'Sign in canceled',
                                serverError: (_) => 'Server eror',
                                emailAlreadyInUse: (_) =>
                                    'Email already in use',
                                invalidEmailPasswordCombo: (_) =>
                                    'Invalid email and password combination'),
                          ).show(context)
                        },
                    (_) => {})
              });
    }, builder: (context, state) {
      return Form(
        autovalidateMode: state.showErrorMessages
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            const Text(
              '📒',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 130),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
              onChanged: (value) => {
                context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
              },
              validator: (_) => context
                  .read<SignInFormBloc>()
                  .state
                  .emailAddress
                  .value
                  .fold(
                      (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null),
                      (r) => null),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              autocorrect: false,
              obscureText: true,
              onChanged: (value) => context
                  .read<SignInFormBloc>()
                  .add(SignInFormEvent.passwordChanged(value)),
              validator: (_) => context
                  .read<SignInFormBloc>()
                  .state
                  .password
                  .value
                  .fold(
                      (f) => f.maybeMap(
                          shortPassword: (_) => 'Short password',
                          orElse: () => null),
                      (r) => null),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text('SIGN IN'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                            const SignInFormEvent
                                .registerWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text('REGISTER'),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                context.read<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithGooglePressed(),
                    );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('SIGN IN WITH GOOGLE'),
            ),
            if (state.isSubmitting) ...[
              const SizedBox(
                height: 8,
              ),
              const LinearProgressIndicator(
                // ignore: avoid_redundant_argument_values
                value: null,
              ),
            ],
          ],
        ),
      );
    });
  }
}
