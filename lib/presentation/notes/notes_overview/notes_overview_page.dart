import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_firebase_ddd_course/application/auth/auth_bloc.dart';

class NotesOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        leading: IconButton(
          icon: const Icon(Icons.exit_to_app),
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.signedOut());
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.indeterminate_check_box),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Navigate to NoteFormPage
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
