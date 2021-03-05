import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:notes_firebase_ddd_course/application/notes/note_form/note_form_bloc.dart';
import 'package:notes_firebase_ddd_course/presentation/notes/note_form/misc/todo_item_presentation_classes.dart';

class AddTodoTile extends StatelessWidget {
  const AddTodoTile({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Add a todo'),
      leading: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(Icons.add),
      ),
      onTap: () {
        context.read<NoteFormBloc>().add(NoteFormEvent.todosChanged(listOf(emptyList<TodoItemPrimitive>()));
      },
    );
  }
}
