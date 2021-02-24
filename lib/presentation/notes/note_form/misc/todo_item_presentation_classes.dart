import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_firebase_ddd_course/domain/core/value_objects.dart';

part 'todo_item_presentation_classes.freezed.dart';

@freezed
abstract class TodoItemPrimitive implements _$TodoItemPrimitive {
  const TodoItemPrimitive._();
  const factory TodoItemPrimitive({
    @required UniqueId id,
    @required String name,
    @required bool done,
  }) = _TodoItemPrimitive;

  factory TodoItemPrimitive.empty() =>
      TodoItemPrimitive(id: UniqueId(), name: 'name', done: false);
}
