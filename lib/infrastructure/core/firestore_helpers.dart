import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:notes_firebase_ddd_course/domain/auth/i_auth_facade.dart';
import 'package:notes_firebase_ddd_course/domain/core/errors.dart';
import 'package:notes_firebase_ddd_course/infrastructure/auth/firebase_auth_facade.dart';
import 'package:notes_firebase_ddd_course/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userPption = getIt<IAuthFacade>().getSignedInUser();
    final user = userPption.getOrElse(
      () => throw NotAuthenticatedError(),
    );
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferencex on DocumentReference {
  CollectionReference get noteCollection => collection('notes');
}
