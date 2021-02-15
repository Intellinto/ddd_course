import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_firebase_ddd_course/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    @required UniqueId id,
  }) = _AppUser;
}
