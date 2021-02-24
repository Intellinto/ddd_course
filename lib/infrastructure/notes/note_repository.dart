import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:notes_firebase_ddd_course/domain/notes/i_note_repository.dart';
import 'package:notes_firebase_ddd_course/domain/notes/note_failure.dart';
import 'package:notes_firebase_ddd_course/domain/notes/note.dart';
import 'package:notes_firebase_ddd_course/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';
import 'note_dtos.dart';

@LazySingleton(as: INoteRepository)
class NoteRepository implements INoteRepository {
  final FirebaseFirestore _firestore;

  NoteRepository(this._firestore);

  Stream<Either<NoteFailure, KtList<Note>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapShot) => right<NoteFailure, KtList<Note>>(
            snapShot.docs
                .map((doc) => NoteDto.fromFireStore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('permission-denied')) {
        return left(const NoteFailure.insuffecientPermissions());
      } else {
        // maybe log error here
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<NoteFailure, KtList<Note>>> watchUncompleted() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.noteCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapShot) =>
              snapShot.docs.map((doc) => NoteDto.fromFireStore(doc).toDomain()),
        )
        .map((notes) => right<NoteFailure, KtList<Note>>(
              notes
                  .where((note) =>
                      note.todos.getOrCrash().any((todoitem) => !todoitem.done))
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('permission-denied')) {
        return left(const NoteFailure.insuffecientPermissions());
      } else {
        // maybe log error here
        return left(const NoteFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<NoteFailure, Unit>> create(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).set(noteDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('permission-denied')) {
        return left(const NoteFailure.insuffecientPermissions());
      } else {
        // maybe log error here
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> update(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteDto = NoteDto.fromDomain(note);
      await userDoc.noteCollection.doc(noteDto.id).update(noteDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('permission-denied')) {
        return left(const NoteFailure.insuffecientPermissions());
      } else if (e.message.contains('not-found')) {
        return left(const NoteFailure.unableToUpdate());
      } else {
        // maybe log error here
        return left(const NoteFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<NoteFailure, Unit>> delete(Note note) async {
    try {
      final userDoc = await _firestore.userDocument();
      final noteId = note.id.getOrCrash();
      await userDoc.noteCollection.doc(noteId).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('permission-denied')) {
        return left(const NoteFailure.insuffecientPermissions());
      } else if (e.message.contains('not-found')) {
        return left(const NoteFailure.unableToDelete());
      } else {
        // maybe log error here
        return left(const NoteFailure.unexpected());
      }
    }
  }
}
