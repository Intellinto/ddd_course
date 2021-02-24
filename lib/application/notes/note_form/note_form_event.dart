part of 'note_form_bloc.dart';

@freezed
abstract class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.bodyChanged(String bodyStr) = _BodyChanged;
  const factory NoteFormEvent.colorChanged(Color bodyStr) = _ColorChanged;
  const factory NoteFormEvent.todosChanged(Color bodyStr) = _TodosChanged;
}
